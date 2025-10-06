// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RideStruct extends BaseStruct {
  RideStruct({
    String? id,
    String? originAddress,
    String? destinationAddress,
    double? estimatedDistanceKm,
    String? estimatedDurationMin,
    OriginLatlngStruct? originLatlng,
    DestinationLatlngStruct? destinationLatlng,
    String? routePolyline,
    double? fareAmount,
    double? platformFee,
    String? paymentMethod,
    String? status,
    String? createdAt,
  })  : _id = id,
        _originAddress = originAddress,
        _destinationAddress = destinationAddress,
        _estimatedDistanceKm = estimatedDistanceKm,
        _estimatedDurationMin = estimatedDurationMin,
        _originLatlng = originLatlng,
        _destinationLatlng = destinationLatlng,
        _routePolyline = routePolyline,
        _fareAmount = fareAmount,
        _platformFee = platformFee,
        _paymentMethod = paymentMethod,
        _status = status,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "origin_address" field.
  String? _originAddress;
  String get originAddress => _originAddress ?? '';
  set originAddress(String? val) => _originAddress = val;

  bool hasOriginAddress() => _originAddress != null;

  // "destination_address" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  set destinationAddress(String? val) => _destinationAddress = val;

  bool hasDestinationAddress() => _destinationAddress != null;

  // "estimated_distance_km" field.
  double? _estimatedDistanceKm;
  double get estimatedDistanceKm => _estimatedDistanceKm ?? 0.0;
  set estimatedDistanceKm(double? val) => _estimatedDistanceKm = val;

  void incrementEstimatedDistanceKm(double amount) =>
      estimatedDistanceKm = estimatedDistanceKm + amount;

  bool hasEstimatedDistanceKm() => _estimatedDistanceKm != null;

  // "estimated_duration_min" field.
  String? _estimatedDurationMin;
  String get estimatedDurationMin => _estimatedDurationMin ?? '';
  set estimatedDurationMin(String? val) => _estimatedDurationMin = val;

  bool hasEstimatedDurationMin() => _estimatedDurationMin != null;

  // "origin_latlng" field.
  OriginLatlngStruct? _originLatlng;
  OriginLatlngStruct get originLatlng => _originLatlng ?? OriginLatlngStruct();
  set originLatlng(OriginLatlngStruct? val) => _originLatlng = val;

  void updateOriginLatlng(Function(OriginLatlngStruct) updateFn) {
    updateFn(_originLatlng ??= OriginLatlngStruct());
  }

  bool hasOriginLatlng() => _originLatlng != null;

  // "destination_latlng" field.
  DestinationLatlngStruct? _destinationLatlng;
  DestinationLatlngStruct get destinationLatlng =>
      _destinationLatlng ?? DestinationLatlngStruct();
  set destinationLatlng(DestinationLatlngStruct? val) =>
      _destinationLatlng = val;

  void updateDestinationLatlng(Function(DestinationLatlngStruct) updateFn) {
    updateFn(_destinationLatlng ??= DestinationLatlngStruct());
  }

  bool hasDestinationLatlng() => _destinationLatlng != null;

  // "route_polyline" field.
  String? _routePolyline;
  String get routePolyline => _routePolyline ?? '';
  set routePolyline(String? val) => _routePolyline = val;

  bool hasRoutePolyline() => _routePolyline != null;

  // "fare_amount" field.
  double? _fareAmount;
  double get fareAmount => _fareAmount ?? 0.0;
  set fareAmount(double? val) => _fareAmount = val;

  void incrementFareAmount(double amount) => fareAmount = fareAmount + amount;

  bool hasFareAmount() => _fareAmount != null;

  // "platform_fee" field.
  double? _platformFee;
  double get platformFee => _platformFee ?? 0.0;
  set platformFee(double? val) => _platformFee = val;

  void incrementPlatformFee(double amount) =>
      platformFee = platformFee + amount;

  bool hasPlatformFee() => _platformFee != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static RideStruct fromMap(Map<String, dynamic> data) => RideStruct(
        id: data['id'] as String?,
        originAddress: data['origin_address'] as String?,
        destinationAddress: data['destination_address'] as String?,
        estimatedDistanceKm: castToType<double>(data['estimated_distance_km']),
        estimatedDurationMin: data['estimated_duration_min'] as String?,
        originLatlng: data['origin_latlng'] is OriginLatlngStruct
            ? data['origin_latlng']
            : OriginLatlngStruct.maybeFromMap(data['origin_latlng']),
        destinationLatlng: data['destination_latlng'] is DestinationLatlngStruct
            ? data['destination_latlng']
            : DestinationLatlngStruct.maybeFromMap(data['destination_latlng']),
        routePolyline: data['route_polyline'] as String?,
        fareAmount: castToType<double>(data['fare_amount']),
        platformFee: castToType<double>(data['platform_fee']),
        paymentMethod: data['payment_method'] as String?,
        status: data['status'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static RideStruct? maybeFromMap(dynamic data) =>
      data is Map ? RideStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'origin_address': _originAddress,
        'destination_address': _destinationAddress,
        'estimated_distance_km': _estimatedDistanceKm,
        'estimated_duration_min': _estimatedDurationMin,
        'origin_latlng': _originLatlng?.toMap(),
        'destination_latlng': _destinationLatlng?.toMap(),
        'route_polyline': _routePolyline,
        'fare_amount': _fareAmount,
        'platform_fee': _platformFee,
        'payment_method': _paymentMethod,
        'status': _status,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'origin_address': serializeParam(
          _originAddress,
          ParamType.String,
        ),
        'destination_address': serializeParam(
          _destinationAddress,
          ParamType.String,
        ),
        'estimated_distance_km': serializeParam(
          _estimatedDistanceKm,
          ParamType.double,
        ),
        'estimated_duration_min': serializeParam(
          _estimatedDurationMin,
          ParamType.String,
        ),
        'origin_latlng': serializeParam(
          _originLatlng,
          ParamType.DataStruct,
        ),
        'destination_latlng': serializeParam(
          _destinationLatlng,
          ParamType.DataStruct,
        ),
        'route_polyline': serializeParam(
          _routePolyline,
          ParamType.String,
        ),
        'fare_amount': serializeParam(
          _fareAmount,
          ParamType.double,
        ),
        'platform_fee': serializeParam(
          _platformFee,
          ParamType.double,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static RideStruct fromSerializableMap(Map<String, dynamic> data) =>
      RideStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        originAddress: deserializeParam(
          data['origin_address'],
          ParamType.String,
          false,
        ),
        destinationAddress: deserializeParam(
          data['destination_address'],
          ParamType.String,
          false,
        ),
        estimatedDistanceKm: deserializeParam(
          data['estimated_distance_km'],
          ParamType.double,
          false,
        ),
        estimatedDurationMin: deserializeParam(
          data['estimated_duration_min'],
          ParamType.String,
          false,
        ),
        originLatlng: deserializeStructParam(
          data['origin_latlng'],
          ParamType.DataStruct,
          false,
          structBuilder: OriginLatlngStruct.fromSerializableMap,
        ),
        destinationLatlng: deserializeStructParam(
          data['destination_latlng'],
          ParamType.DataStruct,
          false,
          structBuilder: DestinationLatlngStruct.fromSerializableMap,
        ),
        routePolyline: deserializeParam(
          data['route_polyline'],
          ParamType.String,
          false,
        ),
        fareAmount: deserializeParam(
          data['fare_amount'],
          ParamType.double,
          false,
        ),
        platformFee: deserializeParam(
          data['platform_fee'],
          ParamType.double,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RideStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RideStruct &&
        id == other.id &&
        originAddress == other.originAddress &&
        destinationAddress == other.destinationAddress &&
        estimatedDistanceKm == other.estimatedDistanceKm &&
        estimatedDurationMin == other.estimatedDurationMin &&
        originLatlng == other.originLatlng &&
        destinationLatlng == other.destinationLatlng &&
        routePolyline == other.routePolyline &&
        fareAmount == other.fareAmount &&
        platformFee == other.platformFee &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        originAddress,
        destinationAddress,
        estimatedDistanceKm,
        estimatedDurationMin,
        originLatlng,
        destinationLatlng,
        routePolyline,
        fareAmount,
        platformFee,
        paymentMethod,
        status,
        createdAt
      ]);
}

RideStruct createRideStruct({
  String? id,
  String? originAddress,
  String? destinationAddress,
  double? estimatedDistanceKm,
  String? estimatedDurationMin,
  OriginLatlngStruct? originLatlng,
  DestinationLatlngStruct? destinationLatlng,
  String? routePolyline,
  double? fareAmount,
  double? platformFee,
  String? paymentMethod,
  String? status,
  String? createdAt,
}) =>
    RideStruct(
      id: id,
      originAddress: originAddress,
      destinationAddress: destinationAddress,
      estimatedDistanceKm: estimatedDistanceKm,
      estimatedDurationMin: estimatedDurationMin,
      originLatlng: originLatlng ?? OriginLatlngStruct(),
      destinationLatlng: destinationLatlng ?? DestinationLatlngStruct(),
      routePolyline: routePolyline,
      fareAmount: fareAmount,
      platformFee: platformFee,
      paymentMethod: paymentMethod,
      status: status,
      createdAt: createdAt,
    );
