// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTEstatisticasStruct extends BaseStruct {
  DTEstatisticasStruct({
    int? totalUsers,
    int? totalDrivers,
    int? totalRides,
    int? activeDrivers,
    int? completedRides,
    int? pendingRides,
  })  : _totalUsers = totalUsers,
        _totalDrivers = totalDrivers,
        _totalRides = totalRides,
        _activeDrivers = activeDrivers,
        _completedRides = completedRides,
        _pendingRides = pendingRides;

  // "total_users" field.
  int? _totalUsers;
  int get totalUsers => _totalUsers ?? 0;
  set totalUsers(int? val) => _totalUsers = val;

  void incrementTotalUsers(int amount) => totalUsers = totalUsers + amount;

  bool hasTotalUsers() => _totalUsers != null;

  // "total_drivers" field.
  int? _totalDrivers;
  int get totalDrivers => _totalDrivers ?? 0;
  set totalDrivers(int? val) => _totalDrivers = val;

  void incrementTotalDrivers(int amount) =>
      totalDrivers = totalDrivers + amount;

  bool hasTotalDrivers() => _totalDrivers != null;

  // "total_rides" field.
  int? _totalRides;
  int get totalRides => _totalRides ?? 0;
  set totalRides(int? val) => _totalRides = val;

  void incrementTotalRides(int amount) => totalRides = totalRides + amount;

  bool hasTotalRides() => _totalRides != null;

  // "active_drivers" field.
  int? _activeDrivers;
  int get activeDrivers => _activeDrivers ?? 0;
  set activeDrivers(int? val) => _activeDrivers = val;

  void incrementActiveDrivers(int amount) =>
      activeDrivers = activeDrivers + amount;

  bool hasActiveDrivers() => _activeDrivers != null;

  // "completed_rides" field.
  int? _completedRides;
  int get completedRides => _completedRides ?? 0;
  set completedRides(int? val) => _completedRides = val;

  void incrementCompletedRides(int amount) =>
      completedRides = completedRides + amount;

  bool hasCompletedRides() => _completedRides != null;

  // "pending_rides" field.
  int? _pendingRides;
  int get pendingRides => _pendingRides ?? 0;
  set pendingRides(int? val) => _pendingRides = val;

  void incrementPendingRides(int amount) =>
      pendingRides = pendingRides + amount;

  bool hasPendingRides() => _pendingRides != null;

  static DTEstatisticasStruct fromMap(Map<String, dynamic> data) =>
      DTEstatisticasStruct(
        totalUsers: castToType<int>(data['total_users']),
        totalDrivers: castToType<int>(data['total_drivers']),
        totalRides: castToType<int>(data['total_rides']),
        activeDrivers: castToType<int>(data['active_drivers']),
        completedRides: castToType<int>(data['completed_rides']),
        pendingRides: castToType<int>(data['pending_rides']),
      );

  static DTEstatisticasStruct? maybeFromMap(dynamic data) => data is Map
      ? DTEstatisticasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_users': _totalUsers,
        'total_drivers': _totalDrivers,
        'total_rides': _totalRides,
        'active_drivers': _activeDrivers,
        'completed_rides': _completedRides,
        'pending_rides': _pendingRides,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_users': serializeParam(
          _totalUsers,
          ParamType.int,
        ),
        'total_drivers': serializeParam(
          _totalDrivers,
          ParamType.int,
        ),
        'total_rides': serializeParam(
          _totalRides,
          ParamType.int,
        ),
        'active_drivers': serializeParam(
          _activeDrivers,
          ParamType.int,
        ),
        'completed_rides': serializeParam(
          _completedRides,
          ParamType.int,
        ),
        'pending_rides': serializeParam(
          _pendingRides,
          ParamType.int,
        ),
      }.withoutNulls;

  static DTEstatisticasStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTEstatisticasStruct(
        totalUsers: deserializeParam(
          data['total_users'],
          ParamType.int,
          false,
        ),
        totalDrivers: deserializeParam(
          data['total_drivers'],
          ParamType.int,
          false,
        ),
        totalRides: deserializeParam(
          data['total_rides'],
          ParamType.int,
          false,
        ),
        activeDrivers: deserializeParam(
          data['active_drivers'],
          ParamType.int,
          false,
        ),
        completedRides: deserializeParam(
          data['completed_rides'],
          ParamType.int,
          false,
        ),
        pendingRides: deserializeParam(
          data['pending_rides'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DTEstatisticasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTEstatisticasStruct &&
        totalUsers == other.totalUsers &&
        totalDrivers == other.totalDrivers &&
        totalRides == other.totalRides &&
        activeDrivers == other.activeDrivers &&
        completedRides == other.completedRides &&
        pendingRides == other.pendingRides;
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalUsers,
        totalDrivers,
        totalRides,
        activeDrivers,
        completedRides,
        pendingRides
      ]);
}

DTEstatisticasStruct createDTEstatisticasStruct({
  int? totalUsers,
  int? totalDrivers,
  int? totalRides,
  int? activeDrivers,
  int? completedRides,
  int? pendingRides,
}) =>
    DTEstatisticasStruct(
      totalUsers: totalUsers,
      totalDrivers: totalDrivers,
      totalRides: totalRides,
      activeDrivers: activeDrivers,
      completedRides: completedRides,
      pendingRides: pendingRides,
    );
