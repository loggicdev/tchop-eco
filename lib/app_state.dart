import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_commons/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _previousLogin = prefs.getBool('ff_previousLogin') ?? _previousLogin;
    });
    _safeInit(() {
      _firstOpen = prefs.getBool('ff_firstOpen') ?? _firstOpen;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_DTUser')) {
        try {
          final serializedData = prefs.getString('ff_DTUser') ?? '{}';
          _DTUser =
              DTAuthUserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _fcmTokenRegistered =
          prefs.getBool('ff_fcmTokenRegistered') ?? _fcmTokenRegistered;
    });
    _safeInit(() {
      _DTDrivers = prefs
              .getStringList('ff_DTDrivers')
              ?.map((x) {
                try {
                  return DTDriversStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DTDrivers;
    });
    _safeInit(() {
      _DTUsers = prefs
              .getStringList('ff_DTUsers')
              ?.map((x) {
                try {
                  return DTUsersStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DTUsers;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_DTEstatisticas')) {
        try {
          final serializedData = prefs.getString('ff_DTEstatisticas') ?? '{}';
          _DTEstatisticas = DTEstatisticasStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _DTRides = prefs
              .getStringList('ff_DTRides')
              ?.map((x) {
                try {
                  return DTRidesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _DTRides;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_DTPesquisaReversa')) {
        try {
          final serializedData =
              prefs.getString('ff_DTPesquisaReversa') ?? '{}';
          _DTPesquisaReversa = DTPesquisaReversaStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _rideInProgress = false;
  bool get rideInProgress => _rideInProgress;
  set rideInProgress(bool value) {
    _rideInProgress = value;
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
  }

  String _type = '';
  String get type => _type;
  set type(String value) {
    _type = value;
  }

  bool _previousLogin = false;
  bool get previousLogin => _previousLogin;
  set previousLogin(bool value) {
    _previousLogin = value;
    prefs.setBool('ff_previousLogin', value);
  }

  bool _firstOpen = false;
  bool get firstOpen => _firstOpen;
  set firstOpen(bool value) {
    _firstOpen = value;
    prefs.setBool('ff_firstOpen', value);
  }

  LatLng? _latlng = LatLng(-12.9157341, -38.3350142);
  LatLng? get latlng => _latlng;
  set latlng(LatLng? value) {
    _latlng = value;
  }

  LatLng? _latlngrider = LatLng(-12.9783503, -38.45519339999999);
  LatLng? get latlngrider => _latlngrider;
  set latlngrider(LatLng? value) {
    _latlngrider = value;
  }

  String _navSelecionado = '';
  String get navSelecionado => _navSelecionado;
  set navSelecionado(String value) {
    _navSelecionado = value;
  }

  List<ZzRidesStruct> _zzRides = [
    ZzRidesStruct.fromSerializableMap(jsonDecode(
        '{\"data\":\"1753149139570\",\"id\":\"HGAD726\",\"motorista\":\"Dicky Vigarista\",\"status\":\"Finalizada\",\"acoes\":\"Hello World\",\"motoristaPhoto\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/2se50xeqfvjy/dick.jpg\",\"ridesqtd\":\"12\",\"user_status\":\"Ativo\",\"stars\":\"1\"}')),
    ZzRidesStruct.fromSerializableMap(jsonDecode(
        '{\"data\":\"1752890340000\",\"id\":\"HGAD726\",\"motorista\":\"Peter Perfeito\",\"status\":\"Pendente\",\"acoes\":\"Hello World\",\"motoristaPhoto\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/jlhei74l5ls1/perter.jpg\",\"ridesqtd\":\"66\",\"user_status\":\"Bloqueado\",\"stars\":\"3\"}')),
    ZzRidesStruct.fromSerializableMap(jsonDecode(
        '{\"data\":\"1752026340000\",\"id\":\"HGAD726\",\"motorista\":\"Os Irmãos Rocha\",\"status\":\"Finalizada\",\"acoes\":\"Hello World\",\"motoristaPhoto\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/jq2nntosasjh/irmaos-rocha.jpg\",\"ridesqtd\":\"5\",\"user_status\":\"Ativo\",\"stars\":\"5\"}')),
    ZzRidesStruct.fromSerializableMap(jsonDecode(
        '{\"data\":\"1753063140000\",\"id\":\"HGAD726\",\"motorista\":\"Quadrilha de Morte\",\"status\":\"Cancelada\",\"acoes\":\"Hello World\",\"motoristaPhoto\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/txop-eco-fv8vna/assets/1c6q7vnpmwec/quadrilha-morte.jpg\",\"ridesqtd\":\"52\",\"user_status\":\"Bloqueado\",\"stars\":\"2\"}'))
  ];
  List<ZzRidesStruct> get zzRides => _zzRides;
  set zzRides(List<ZzRidesStruct> value) {
    _zzRides = value;
  }

  void addToZzRides(ZzRidesStruct value) {
    zzRides.add(value);
  }

  void removeFromZzRides(ZzRidesStruct value) {
    zzRides.remove(value);
  }

  void removeAtIndexFromZzRides(int index) {
    zzRides.removeAt(index);
  }

  void updateZzRidesAtIndex(
    int index,
    ZzRidesStruct Function(ZzRidesStruct) updateFn,
  ) {
    zzRides[index] = updateFn(_zzRides[index]);
  }

  void insertAtIndexInZzRides(int index, ZzRidesStruct value) {
    zzRides.insert(index, value);
  }

  List<LatLng> _tuktuklocations = [
    LatLng(-25.9655, 32.5832),
    LatLng(-25.9651, 32.5965),
    LatLng(-25.9215, 32.5726),
    LatLng(-25.9658, 32.5785),
    LatLng(-25.9694, 32.5867),
    LatLng(-25.9262, 32.6028),
    LatLng(-25.9603, 32.6114),
    LatLng(-25.974, 32.5667),
    LatLng(-25.9521, 32.5842),
    LatLng(-25.9437, 32.5679)
  ];
  List<LatLng> get tuktuklocations => _tuktuklocations;
  set tuktuklocations(List<LatLng> value) {
    _tuktuklocations = value;
  }

  void addToTuktuklocations(LatLng value) {
    tuktuklocations.add(value);
  }

  void removeFromTuktuklocations(LatLng value) {
    tuktuklocations.remove(value);
  }

  void removeAtIndexFromTuktuklocations(int index) {
    tuktuklocations.removeAt(index);
  }

  void updateTuktuklocationsAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    tuktuklocations[index] = updateFn(_tuktuklocations[index]);
  }

  void insertAtIndexInTuktuklocations(int index, LatLng value) {
    tuktuklocations.insert(index, value);
  }

  DTAuthUserStruct _DTUser = DTAuthUserStruct();
  DTAuthUserStruct get DTUser => _DTUser;
  set DTUser(DTAuthUserStruct value) {
    _DTUser = value;
    prefs.setString('ff_DTUser', value.serialize());
  }

  void updateDTUserStruct(Function(DTAuthUserStruct) updateFn) {
    updateFn(_DTUser);
    prefs.setString('ff_DTUser', _DTUser.serialize());
  }

  DTAdressCompleteStruct _DTAdressComplete = DTAdressCompleteStruct();
  DTAdressCompleteStruct get DTAdressComplete => _DTAdressComplete;
  set DTAdressComplete(DTAdressCompleteStruct value) {
    _DTAdressComplete = value;
  }

  void updateDTAdressCompleteStruct(Function(DTAdressCompleteStruct) updateFn) {
    updateFn(_DTAdressComplete);
  }

  DTRideRequestStruct _DTRideRequest = DTRideRequestStruct();
  DTRideRequestStruct get DTRideRequest => _DTRideRequest;
  set DTRideRequest(DTRideRequestStruct value) {
    _DTRideRequest = value;
  }

  void updateDTRideRequestStruct(Function(DTRideRequestStruct) updateFn) {
    updateFn(_DTRideRequest);
  }

  bool _fcmTokenRegistered = false;
  bool get fcmTokenRegistered => _fcmTokenRegistered;
  set fcmTokenRegistered(bool value) {
    _fcmTokenRegistered = value;
    prefs.setBool('ff_fcmTokenRegistered', value);
  }

  List<DTDriversStruct> _DTDrivers = [];
  List<DTDriversStruct> get DTDrivers => _DTDrivers;
  set DTDrivers(List<DTDriversStruct> value) {
    _DTDrivers = value;
    prefs.setStringList(
        'ff_DTDrivers', value.map((x) => x.serialize()).toList());
  }

  void addToDTDrivers(DTDriversStruct value) {
    DTDrivers.add(value);
    prefs.setStringList(
        'ff_DTDrivers', _DTDrivers.map((x) => x.serialize()).toList());
  }

  void removeFromDTDrivers(DTDriversStruct value) {
    DTDrivers.remove(value);
    prefs.setStringList(
        'ff_DTDrivers', _DTDrivers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDTDrivers(int index) {
    DTDrivers.removeAt(index);
    prefs.setStringList(
        'ff_DTDrivers', _DTDrivers.map((x) => x.serialize()).toList());
  }

  void updateDTDriversAtIndex(
    int index,
    DTDriversStruct Function(DTDriversStruct) updateFn,
  ) {
    DTDrivers[index] = updateFn(_DTDrivers[index]);
    prefs.setStringList(
        'ff_DTDrivers', _DTDrivers.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDTDrivers(int index, DTDriversStruct value) {
    DTDrivers.insert(index, value);
    prefs.setStringList(
        'ff_DTDrivers', _DTDrivers.map((x) => x.serialize()).toList());
  }

  List<DTUsersStruct> _DTUsers = [];
  List<DTUsersStruct> get DTUsers => _DTUsers;
  set DTUsers(List<DTUsersStruct> value) {
    _DTUsers = value;
    prefs.setStringList('ff_DTUsers', value.map((x) => x.serialize()).toList());
  }

  void addToDTUsers(DTUsersStruct value) {
    DTUsers.add(value);
    prefs.setStringList(
        'ff_DTUsers', _DTUsers.map((x) => x.serialize()).toList());
  }

  void removeFromDTUsers(DTUsersStruct value) {
    DTUsers.remove(value);
    prefs.setStringList(
        'ff_DTUsers', _DTUsers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDTUsers(int index) {
    DTUsers.removeAt(index);
    prefs.setStringList(
        'ff_DTUsers', _DTUsers.map((x) => x.serialize()).toList());
  }

  void updateDTUsersAtIndex(
    int index,
    DTUsersStruct Function(DTUsersStruct) updateFn,
  ) {
    DTUsers[index] = updateFn(_DTUsers[index]);
    prefs.setStringList(
        'ff_DTUsers', _DTUsers.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDTUsers(int index, DTUsersStruct value) {
    DTUsers.insert(index, value);
    prefs.setStringList(
        'ff_DTUsers', _DTUsers.map((x) => x.serialize()).toList());
  }

  /// DTEstatisticas
  DTEstatisticasStruct _DTEstatisticas = DTEstatisticasStruct();
  DTEstatisticasStruct get DTEstatisticas => _DTEstatisticas;
  set DTEstatisticas(DTEstatisticasStruct value) {
    _DTEstatisticas = value;
    prefs.setString('ff_DTEstatisticas', value.serialize());
  }

  void updateDTEstatisticasStruct(Function(DTEstatisticasStruct) updateFn) {
    updateFn(_DTEstatisticas);
    prefs.setString('ff_DTEstatisticas', _DTEstatisticas.serialize());
  }

  List<DTRidesStruct> _DTRides = [];
  List<DTRidesStruct> get DTRides => _DTRides;
  set DTRides(List<DTRidesStruct> value) {
    _DTRides = value;
    prefs.setStringList('ff_DTRides', value.map((x) => x.serialize()).toList());
  }

  void addToDTRides(DTRidesStruct value) {
    DTRides.add(value);
    prefs.setStringList(
        'ff_DTRides', _DTRides.map((x) => x.serialize()).toList());
  }

  void removeFromDTRides(DTRidesStruct value) {
    DTRides.remove(value);
    prefs.setStringList(
        'ff_DTRides', _DTRides.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDTRides(int index) {
    DTRides.removeAt(index);
    prefs.setStringList(
        'ff_DTRides', _DTRides.map((x) => x.serialize()).toList());
  }

  void updateDTRidesAtIndex(
    int index,
    DTRidesStruct Function(DTRidesStruct) updateFn,
  ) {
    DTRides[index] = updateFn(_DTRides[index]);
    prefs.setStringList(
        'ff_DTRides', _DTRides.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDTRides(int index, DTRidesStruct value) {
    DTRides.insert(index, value);
    prefs.setStringList(
        'ff_DTRides', _DTRides.map((x) => x.serialize()).toList());
  }

  DTPesquisaReversaStruct _DTPesquisaReversa = DTPesquisaReversaStruct();
  DTPesquisaReversaStruct get DTPesquisaReversa => _DTPesquisaReversa;
  set DTPesquisaReversa(DTPesquisaReversaStruct value) {
    _DTPesquisaReversa = value;
    prefs.setString('ff_DTPesquisaReversa', value.serialize());
  }

  void updateDTPesquisaReversaStruct(
      Function(DTPesquisaReversaStruct) updateFn) {
    updateFn(_DTPesquisaReversa);
    prefs.setString('ff_DTPesquisaReversa', _DTPesquisaReversa.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
