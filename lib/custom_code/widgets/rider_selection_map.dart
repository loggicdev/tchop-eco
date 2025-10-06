// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;
import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'package:polyline_codec/polyline_codec.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class RiderSelectionMap extends StatefulWidget {
  const RiderSelectionMap({
    Key? key,
    this.width,
    this.height,
    this.userLocation,
    this.rideLocation,
    this.userMarkerIcon,
    this.rideMarkerIcon,
    this.driverMarkerIcon,
    this.lineColor,
    this.lineWidth,
    this.enableRealTimeUpdates = false,
    this.rideId,
    this.showDriverLocation = false,
  }) : super(key: key);

  final double? width;
  final double? height;
  final LatLng? userLocation;
  final LatLng? rideLocation;
  final String? userMarkerIcon;
  final String? rideMarkerIcon;
  final String? driverMarkerIcon;
  final Color? lineColor;
  final double? lineWidth;
  final bool enableRealTimeUpdates;
  final String? rideId;
  final bool showDriverLocation;

  @override
  _RiderSelectionMapState createState() => _RiderSelectionMapState();
}

class _RiderSelectionMapState extends State<RiderSelectionMap> {
  gmaps.GoogleMapController? _mapController;
  Set<gmaps.Marker> _markers = {};
  Set<gmaps.Polyline> _polylines = {};
  StreamSubscription<List<Map<String, dynamic>>>? _rideSubscription;

  gmaps.LatLng? _currentDriverLocation;
  gmaps.BitmapDescriptor? _driverMarkerBitmap;
  gmaps.BitmapDescriptor? _userMarkerBitmap;
  gmaps.BitmapDescriptor? _rideMarkerBitmap;
  List<gmaps.LatLng> _routePoints = [];

  gmaps.LatLng? _convertToGoogleMapsLatLng(LatLng? ffLatLng) {
    if (ffLatLng == null) return null;
    return gmaps.LatLng(ffLatLng.latitude, ffLatLng.longitude);
  }

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
    if (widget.enableRealTimeUpdates && widget.rideId != null) {
      _setupRealTimeUpdates();
    }
  }

  @override
  void dispose() {
    _rideSubscription?.cancel();
    super.dispose();
  }

  Future<void> _loadMarkerIcons() async {
    if (widget.userMarkerIcon != null) {
      try {
        final Uint8List markerIcon =
            await _getIconBytes(widget.userMarkerIcon!);
        _userMarkerBitmap = gmaps.BitmapDescriptor.bytes(markerIcon);
      } catch (e) {
        print('Erro ao carregar ícone do usuário: $e');
      }
    }

    if (widget.rideMarkerIcon != null) {
      try {
        final Uint8List markerIcon =
            await _getIconBytes(widget.rideMarkerIcon!);
        _rideMarkerBitmap = gmaps.BitmapDescriptor.bytes(markerIcon);
      } catch (e) {
        print('Erro ao carregar ícone do destino: $e');
      }
    }

    if (widget.showDriverLocation && widget.driverMarkerIcon != null) {
      try {
        final Uint8List markerIcon =
            await _getIconBytes(widget.driverMarkerIcon!);
        _driverMarkerBitmap = gmaps.BitmapDescriptor.bytes(markerIcon);
      } catch (e) {
        print('Erro ao carregar ícone do motorista: $e');
      }
    }

    await _updateMapElements();
  }

  Future<Uint8List> _getIconBytes(String source, {int? maxWidth}) async {
    Uint8List imageBytes;

    if (source.startsWith('http://') || source.startsWith('https://')) {
      final response = await http.get(Uri.parse(source));
      if (response.statusCode == 200) {
        imageBytes = response.bodyBytes;
      } else {
        throw Exception(
            'Falha ao carregar imagem da URL: ${response.statusCode}');
      }
    } else {
      ByteData data = await rootBundle.load(source);
      imageBytes = data.buffer.asUint8List();
    }

    if (maxWidth != null) {
      ui.Codec codec = await ui.instantiateImageCodec(
        imageBytes,
        targetWidth: maxWidth,
      );
      ui.FrameInfo fi = await codec.getNextFrame();
      return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
          .buffer
          .asUint8List();
    } else {
      return imageBytes;
    }
  }

  Future<void> _getDirectionsRoute(
      gmaps.LatLng origin, gmaps.LatLng destination) async {
    try {
      print(
          '🗺️ INICIANDO busca de rota de ${origin.latitude},${origin.longitude} para ${destination.latitude},${destination.longitude}');
      print('🔍 _routePoints antes da busca: ${_routePoints.length} pontos');

      final String edgeFunctionUrl =
          'https://obhhhvmhnhqbcsgmegsc.supabase.co/functions/v1/get-directions';

      final Map<String, dynamic> requestData = {
        'origin': {
          'lat': origin.latitude,
          'lng': origin.longitude,
        },
        'destination': {
          'lat': destination.latitude,
          'lng': destination.longitude,
        },
      };

      print('🌐 URL da Edge Function: $edgeFunctionUrl');
      print('📤 Dados da requisição: $requestData');

      final response = await http.post(
        Uri.parse(edgeFunctionUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9iaGhodm1obmhxYmNzZ21lZ3NjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc3NjkyMjMsImV4cCI6MjA2MzM0NTIyM30.uKf6gnnniqm4Lc57HXj40SxMDppaEVULu4Z-vyzYWjc',
        },
        body: json.encode(requestData),
      );

      print('📡 Status da resposta: ${response.statusCode}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        print('📊 Resposta da Edge Function: ${data['success']}');

        if (data['success'] == true && data['polyline'] != null) {
          final polyline = data['polyline'];

          print(
              '🔗 Polyline recebida (${polyline.length} chars): ${polyline.substring(0, math.min<int>(100, polyline.length))}...');
          print('🔍 Polyline completa: $polyline');

          // Decodificar polyline
          final newRoutePoints = _decodePolyline(polyline);
          print('📍 Pontos decodificados: ${newRoutePoints.length}');

          if (newRoutePoints.isNotEmpty) {
            _routePoints = newRoutePoints;
            print(
                '✅ _routePoints atualizado com ${_routePoints.length} pontos');
            print(
                '📍 Primeiro ponto: ${_routePoints.first.latitude}, ${_routePoints.first.longitude}');
            print(
                '📍 Último ponto: ${_routePoints.last.latitude}, ${_routePoints.last.longitude}');
          } else {
            print('⚠️ Nenhum ponto foi decodificado da polyline');
            _createStraightLineRoute(origin, destination);
          }
        } else {
          print('❌ Erro na resposta da Edge Function: ${data['error']}');
          if (data['details'] != null) {
            print('❌ Detalhes do erro: ${data['details']}');
          }
          // Fallback para linha reta
          _createStraightLineRoute(origin, destination);
        }
      } else {
        print('❌ Erro HTTP na Edge Function: ${response.statusCode}');
        print('❌ Corpo da resposta: ${response.body}');
        _createStraightLineRoute(origin, destination);
      }
    } catch (e) {
      print('❌ Erro ao buscar rota: $e');
      _createStraightLineRoute(origin, destination);
    }

    print(
        '🏁 FINALIZANDO _getDirectionsRoute - _routePoints: ${_routePoints.length} pontos');
  }

  void _createStraightLineRoute(gmaps.LatLng origin, gmaps.LatLng destination) {
    print('📏 Criando rota em linha reta como fallback');
    _routePoints = [origin, destination];
    setState(() {
      print('🔄 Estado atualizado com rota em linha reta');
    });
  }

  List<gmaps.LatLng> _decodePolyline(String encoded) {
    print(
        '🔍 Decodificando polyline com biblioteca: ${encoded.substring(0, math.min<int>(50, encoded.length))}...');

    try {
      final List<List<num>> decoded = PolylineCodec.decode(encoded);

      List<gmaps.LatLng> points = [];
      for (var point in decoded) {
        if (point.length >= 2) {
          double latitude = point[0].toDouble();
          double longitude = point[1].toDouble();

          if (latitude >= -90 &&
              latitude <= 90 &&
              longitude >= -180 &&
              longitude <= 180) {
            points.add(gmaps.LatLng(latitude, longitude));
            if (points.length <= 5 || points.length % 20 == 0) {
              print('✅ Ponto ${points.length}: $latitude, $longitude');
            }
          } else {
            print('⚠️ Coordenada inválida ignorada: $latitude, $longitude');
          }
        }
      }

      print(
          '🏁 Decodificação finalizada: ${points.length} pontos válidos de ${decoded.length} decodificados');
      if (points.isNotEmpty) {
        print(
            '   Primeiro: ${points.first.latitude}, ${points.first.longitude}');
        print('   Último: ${points.last.latitude}, ${points.last.longitude}');
      }

      return points;
    } catch (e) {
      print('❌ Erro na decodificação com biblioteca: $e');
      return [];
    }
  }

  void _setupRealTimeUpdates() {
    if (widget.rideId == null) return;

    _rideSubscription = SupaFlow.client
        .from('rides')
        .stream(primaryKey: ['id'])
        .eq('id', widget.rideId!)
        .listen((List<Map<String, dynamic>> data) {
          if (data.isNotEmpty) {
            final rideData = data.first;
            if (widget.showDriverLocation &&
                rideData['driver_latitude'] != null &&
                rideData['driver_longitude'] != null) {
              _currentDriverLocation = gmaps.LatLng(
                rideData['driver_latitude'].toDouble(),
                rideData['driver_longitude'].toDouble(),
              );
              _updateMapElements();
            }
          }
        });
  }

  Future<void> _updateMapElements() async {
    print('🔄 Atualizando elementos do mapa...');
    final gmaps.LatLng? userGoogleLocation =
        _convertToGoogleMapsLatLng(widget.userLocation);
    final gmaps.LatLng? rideGoogleLocation =
        _convertToGoogleMapsLatLng(widget.rideLocation);

    print('📍 Localização do usuário: $userGoogleLocation');
    print('📍 Localização do destino: $rideGoogleLocation');
    print('📍 Pontos da rota atual: ${_routePoints.length}');

    if (userGoogleLocation != null && rideGoogleLocation != null) {
      print('🚀 Iniciando busca de rota...');
      await _getDirectionsRoute(userGoogleLocation, rideGoogleLocation);
    }
    Set<gmaps.Marker> newMarkers = {};
    Set<gmaps.Polyline> newPolylines = {};
    if (userGoogleLocation != null) {
      newMarkers.add(
        gmaps.Marker(
          markerId: const gmaps.MarkerId('user_location'),
          position: userGoogleLocation,
          icon: _userMarkerBitmap ??
              gmaps.BitmapDescriptor.defaultMarkerWithHue(
                  gmaps.BitmapDescriptor.hueBlue),
          infoWindow: const gmaps.InfoWindow(
            title: 'Passageiro',
            snippet: 'Sua localização',
          ),
        ),
      );
    }

    if (rideGoogleLocation != null) {
      newMarkers.add(
        gmaps.Marker(
          markerId: const gmaps.MarkerId('ride_location'),
          position: rideGoogleLocation,
          icon: _rideMarkerBitmap ??
              gmaps.BitmapDescriptor.defaultMarkerWithHue(
                  gmaps.BitmapDescriptor.hueRed),
          infoWindow: const gmaps.InfoWindow(
            title: 'Destino',
            snippet: 'Local da corrida',
          ),
        ),
      );
    }

    if (widget.showDriverLocation && _currentDriverLocation != null) {
      newMarkers.add(
        gmaps.Marker(
          markerId: const gmaps.MarkerId('driver_location'),
          position: _currentDriverLocation!,
          icon: _driverMarkerBitmap ??
              gmaps.BitmapDescriptor.defaultMarkerWithHue(
                  gmaps.BitmapDescriptor.hueGreen),
          infoWindow: const gmaps.InfoWindow(
            title: 'Motorista',
            snippet: 'Localização atual',
          ),
        ),
      );
    }

    if (_routePoints.isNotEmpty) {
      print(
          '✅ Criando polilinha com rota real (${_routePoints.length} pontos)');
      final polyline = gmaps.Polyline(
        polylineId: const gmaps.PolylineId('user_to_ride_route'),
        points: _routePoints,
        color: widget.lineColor ?? Colors.blue,
        width: (widget.lineWidth ?? 5.0).round(), // Aumentei a largura padrão
        patterns: [], // Linha sólida
      );
      newPolylines.add(polyline);
      print('✅ Polyline adicionada: ${polyline.polylineId.value}');
    } else if (userGoogleLocation != null && rideGoogleLocation != null) {
      print('⚠️ Usando fallback - linha reta tracejada');
      // Fallback: linha reta se a rota não estiver disponível
      final fallbackPolyline = gmaps.Polyline(
        polylineId: const gmaps.PolylineId('user_to_ride_fallback'),
        points: [userGoogleLocation, rideGoogleLocation],
        color: widget.lineColor ??
            Colors.red, // Mudei para vermelho para distinguir
        width: (widget.lineWidth ?? 5.0).round(), // Aumentei a largura padrão
        patterns: [
          gmaps.PatternItem.dash(10),
          gmaps.PatternItem.gap(5)
        ], // Linha tracejada
      );
      newPolylines.add(fallbackPolyline);
      print(
          '⚠️ Polyline fallback adicionada: ${fallbackPolyline.polylineId.value}');
    }

    print(
        '🔄 Atualizando estado com ${newMarkers.length} marcadores e ${newPolylines.length} polylines');

    if (mounted) {
      setState(() {
        _markers = <gmaps.Marker>{};
        _polylines = <gmaps.Polyline>{};
      });

      await Future.delayed(const Duration(milliseconds: 50));

      if (mounted) {
        setState(() {
          _markers = newMarkers;
          _polylines = newPolylines;
        });
      }
    }

    print(
        '✅ Estado atualizado - Marcadores: ${_markers.length}, Polylines: ${_polylines.length}');

    await Future.delayed(const Duration(milliseconds: 100));

    // Ajustar câmera para mostrar todos os pontos
    _fitCameraToBounds();
  }

  void _fitCameraToBounds() {
    if (_mapController == null) return;

    List<gmaps.LatLng> positions = [];

    final gmaps.LatLng? userGoogleLocation =
        _convertToGoogleMapsLatLng(widget.userLocation);
    final gmaps.LatLng? rideGoogleLocation =
        _convertToGoogleMapsLatLng(widget.rideLocation);

    if (userGoogleLocation != null) {
      positions.add(userGoogleLocation);
    }

    if (rideGoogleLocation != null) {
      positions.add(rideGoogleLocation);
    }

    if (_currentDriverLocation != null) {
      positions.add(_currentDriverLocation!);
    }

    if (positions.isEmpty) return;

    if (positions.length == 1) {
      _mapController!.animateCamera(
        gmaps.CameraUpdate.newLatLngZoom(positions.first, 15.0),
      );
      return;
    }

    double minLat = positions.map((p) => p.latitude).reduce(math.min);
    double maxLat = positions.map((p) => p.latitude).reduce(math.max);
    double minLng = positions.map((p) => p.longitude).reduce(math.min);
    double maxLng = positions.map((p) => p.longitude).reduce(math.max);

    final bounds = gmaps.LatLngBounds(
      southwest: gmaps.LatLng(minLat, minLng),
      northeast: gmaps.LatLng(maxLat, maxLng),
    );

    _mapController!.animateCamera(
      gmaps.CameraUpdate.newLatLngBounds(bounds, 100.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: gmaps.GoogleMap(
              onMapCreated: (gmaps.GoogleMapController controller) async {
                _mapController = controller;

                const String mapStyle = '''
                 [
                   {
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#f5f5f5"
                       }
                     ]
                   },
                   {
                     "elementType": "labels.icon",
                     "stylers": [
                       {
                         "visibility": "off"
                       }
                     ]
                   },
                   {
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#616161"
                       }
                     ]
                   },
                   {
                     "elementType": "labels.text.stroke",
                     "stylers": [
                       {
                         "color": "#f5f5f5"
                       }
                     ]
                   },
                   {
                     "featureType": "administrative.land_parcel",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#bdbdbd"
                       }
                     ]
                   },
                   {
                     "featureType": "poi",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#eeeeee"
                       }
                     ]
                   },
                   {
                     "featureType": "poi",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#757575"
                       }
                     ]
                   },
                   {
                     "featureType": "poi.business",
                     "elementType": "labels",
                     "stylers": [
                       {
                         "visibility": "on"
                       }
                     ]
                   },
                   {
                     "featureType": "poi.park",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#e5e5e5"
                       }
                     ]
                   },
                   {
                     "featureType": "poi.park",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#9e9e9e"
                       }
                     ]
                   },
                   {
                     "featureType": "road",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#ffffff"
                       }
                     ]
                   },
                   {
                     "featureType": "road.arterial",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#757575"
                       }
                     ]
                   },
                   {
                     "featureType": "road.highway",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#dadada"
                       }
                     ]
                   },
                   {
                     "featureType": "road.highway",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#616161"
                       }
                     ]
                   },
                   {
                     "featureType": "road.local",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#9e9e9e"
                       }
                     ]
                   },
                   {
                     "featureType": "transit.line",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#e5e5e5"
                       }
                     ]
                   },
                   {
                     "featureType": "transit.station",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#eeeeee"
                       }
                     ]
                   },
                   {
                     "featureType": "water",
                     "elementType": "geometry",
                     "stylers": [
                       {
                         "color": "#c9c9c9"
                       }
                     ]
                   },
                   {
                     "featureType": "water",
                     "elementType": "labels.text.fill",
                     "stylers": [
                       {
                         "color": "#9e9e9e"
                       }
                     ]
                   }
                 ]
                 ''';

                await controller.setMapStyle(mapStyle);
                _fitCameraToBounds();
              },
              initialCameraPosition: gmaps.CameraPosition(
                target: _convertToGoogleMapsLatLng(widget.userLocation) ??
                    _convertToGoogleMapsLatLng(widget.rideLocation) ??
                    const gmaps.LatLng(
                        -23.5505, -46.6333), // São Paulo como padrão
                zoom: 14.0,
              ),
              markers: _markers,
              polylines: _polylines,
              mapType: gmaps.MapType.normal,
              myLocationEnabled: false,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              compassEnabled: true,
              mapToolbarEnabled: false,
              zoomGesturesEnabled: true,
              scrollGesturesEnabled: true,
              tiltGesturesEnabled: true,
              rotateGesturesEnabled: true,
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black87,
              elevation: 4,
              onPressed: () {
                _fitCameraToBounds();
              },
              child: const Icon(
                Icons.center_focus_strong,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
