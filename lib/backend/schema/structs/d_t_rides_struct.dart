// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTRidesStruct extends BaseStruct {
  DTRidesStruct({
    String? id,
    String? userId,
    String? driverId,
    String? status,
    String? originAddress,
    String? destinationAddress,
    double? estimatedDistanceKm,
    double? estimatedFare,
    double? fareAmount,
    String? createdAt,
    String? driverName,
    String? driverEmail,
    String? driverPhone,
    int? totalRidesByDriver,
  })  : _id = id,
        _userId = userId,
        _driverId = driverId,
        _status = status,
        _originAddress = originAddress,
        _destinationAddress = destinationAddress,
        _estimatedDistanceKm = estimatedDistanceKm,
        _estimatedFare = estimatedFare,
        _fareAmount = fareAmount,
        _createdAt = createdAt,
        _driverName = driverName,
        _driverEmail = driverEmail,
        _driverPhone = driverPhone,
        _totalRidesByDriver = totalRidesByDriver;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "driver_id" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  set driverId(String? val) => _driverId = val;

  bool hasDriverId() => _driverId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

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

  // "estimated_fare" field.
  double? _estimatedFare;
  double get estimatedFare => _estimatedFare ?? 0.0;
  set estimatedFare(double? val) => _estimatedFare = val;

  void incrementEstimatedFare(double amount) =>
      estimatedFare = estimatedFare + amount;

  bool hasEstimatedFare() => _estimatedFare != null;

  // "fare_amount" field.
  double? _fareAmount;
  double get fareAmount => _fareAmount ?? 0.0;
  set fareAmount(double? val) => _fareAmount = val;

  void incrementFareAmount(double amount) => fareAmount = fareAmount + amount;

  bool hasFareAmount() => _fareAmount != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  set driverName(String? val) => _driverName = val;

  bool hasDriverName() => _driverName != null;

  // "driver_email" field.
  String? _driverEmail;
  String get driverEmail => _driverEmail ?? '';
  set driverEmail(String? val) => _driverEmail = val;

  bool hasDriverEmail() => _driverEmail != null;

  // "driver_phone" field.
  String? _driverPhone;
  String get driverPhone => _driverPhone ?? '';
  set driverPhone(String? val) => _driverPhone = val;

  bool hasDriverPhone() => _driverPhone != null;

  // "total_rides_by_driver" field.
  int? _totalRidesByDriver;
  int get totalRidesByDriver => _totalRidesByDriver ?? 0;
  set totalRidesByDriver(int? val) => _totalRidesByDriver = val;

  void incrementTotalRidesByDriver(int amount) =>
      totalRidesByDriver = totalRidesByDriver + amount;

  bool hasTotalRidesByDriver() => _totalRidesByDriver != null;

  static DTRidesStruct fromMap(Map<String, dynamic> data) => DTRidesStruct(
        id: data['id'] as String?,
        userId: data['user_id'] as String?,
        driverId: data['driver_id'] as String?,
        status: data['status'] as String?,
        originAddress: data['origin_address'] as String?,
        destinationAddress: data['destination_address'] as String?,
        estimatedDistanceKm: castToType<double>(data['estimated_distance_km']),
        estimatedFare: castToType<double>(data['estimated_fare']),
        fareAmount: castToType<double>(data['fare_amount']),
        createdAt: data['created_at'] as String?,
        driverName: data['driver_name'] as String?,
        driverEmail: data['driver_email'] as String?,
        driverPhone: data['driver_phone'] as String?,
        totalRidesByDriver: castToType<int>(data['total_rides_by_driver']),
      );

  static DTRidesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DTRidesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'driver_id': _driverId,
        'status': _status,
        'origin_address': _originAddress,
        'destination_address': _destinationAddress,
        'estimated_distance_km': _estimatedDistanceKm,
        'estimated_fare': _estimatedFare,
        'fare_amount': _fareAmount,
        'created_at': _createdAt,
        'driver_name': _driverName,
        'driver_email': _driverEmail,
        'driver_phone': _driverPhone,
        'total_rides_by_driver': _totalRidesByDriver,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'driver_id': serializeParam(
          _driverId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
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
        'estimated_fare': serializeParam(
          _estimatedFare,
          ParamType.double,
        ),
        'fare_amount': serializeParam(
          _fareAmount,
          ParamType.double,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'driver_name': serializeParam(
          _driverName,
          ParamType.String,
        ),
        'driver_email': serializeParam(
          _driverEmail,
          ParamType.String,
        ),
        'driver_phone': serializeParam(
          _driverPhone,
          ParamType.String,
        ),
        'total_rides_by_driver': serializeParam(
          _totalRidesByDriver,
          ParamType.int,
        ),
      }.withoutNulls;

  static DTRidesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTRidesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        driverId: deserializeParam(
          data['driver_id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
        estimatedFare: deserializeParam(
          data['estimated_fare'],
          ParamType.double,
          false,
        ),
        fareAmount: deserializeParam(
          data['fare_amount'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        driverName: deserializeParam(
          data['driver_name'],
          ParamType.String,
          false,
        ),
        driverEmail: deserializeParam(
          data['driver_email'],
          ParamType.String,
          false,
        ),
        driverPhone: deserializeParam(
          data['driver_phone'],
          ParamType.String,
          false,
        ),
        totalRidesByDriver: deserializeParam(
          data['total_rides_by_driver'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DTRidesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTRidesStruct &&
        id == other.id &&
        userId == other.userId &&
        driverId == other.driverId &&
        status == other.status &&
        originAddress == other.originAddress &&
        destinationAddress == other.destinationAddress &&
        estimatedDistanceKm == other.estimatedDistanceKm &&
        estimatedFare == other.estimatedFare &&
        fareAmount == other.fareAmount &&
        createdAt == other.createdAt &&
        driverName == other.driverName &&
        driverEmail == other.driverEmail &&
        driverPhone == other.driverPhone &&
        totalRidesByDriver == other.totalRidesByDriver;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        driverId,
        status,
        originAddress,
        destinationAddress,
        estimatedDistanceKm,
        estimatedFare,
        fareAmount,
        createdAt,
        driverName,
        driverEmail,
        driverPhone,
        totalRidesByDriver
      ]);
}

DTRidesStruct createDTRidesStruct({
  String? id,
  String? userId,
  String? driverId,
  String? status,
  String? originAddress,
  String? destinationAddress,
  double? estimatedDistanceKm,
  double? estimatedFare,
  double? fareAmount,
  String? createdAt,
  String? driverName,
  String? driverEmail,
  String? driverPhone,
  int? totalRidesByDriver,
}) =>
    DTRidesStruct(
      id: id,
      userId: userId,
      driverId: driverId,
      status: status,
      originAddress: originAddress,
      destinationAddress: destinationAddress,
      estimatedDistanceKm: estimatedDistanceKm,
      estimatedFare: estimatedFare,
      fareAmount: fareAmount,
      createdAt: createdAt,
      driverName: driverName,
      driverEmail: driverEmail,
      driverPhone: driverPhone,
      totalRidesByDriver: totalRidesByDriver,
    );
