// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTRideRequestStruct extends BaseStruct {
  DTRideRequestStruct({
    bool? success,
    String? message,
    RideStruct? ride,
    LatLng? origin,
    LatLng? destination,
  })  : _success = success,
        _message = message,
        _ride = ride,
        _origin = origin,
        _destination = destination;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "ride" field.
  RideStruct? _ride;
  RideStruct get ride => _ride ?? RideStruct();
  set ride(RideStruct? val) => _ride = val;

  void updateRide(Function(RideStruct) updateFn) {
    updateFn(_ride ??= RideStruct());
  }

  bool hasRide() => _ride != null;

  // "origin" field.
  LatLng? _origin;
  LatLng? get origin => _origin;
  set origin(LatLng? val) => _origin = val;

  bool hasOrigin() => _origin != null;

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  set destination(LatLng? val) => _destination = val;

  bool hasDestination() => _destination != null;

  static DTRideRequestStruct fromMap(Map<String, dynamic> data) =>
      DTRideRequestStruct(
        success: data['success'] as bool?,
        message: data['message'] as String?,
        ride: data['ride'] is RideStruct
            ? data['ride']
            : RideStruct.maybeFromMap(data['ride']),
        origin: data['origin'] as LatLng?,
        destination: data['destination'] as LatLng?,
      );

  static DTRideRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? DTRideRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'message': _message,
        'ride': _ride?.toMap(),
        'origin': _origin,
        'destination': _destination,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'ride': serializeParam(
          _ride,
          ParamType.DataStruct,
        ),
        'origin': serializeParam(
          _origin,
          ParamType.LatLng,
        ),
        'destination': serializeParam(
          _destination,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static DTRideRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTRideRequestStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        ride: deserializeStructParam(
          data['ride'],
          ParamType.DataStruct,
          false,
          structBuilder: RideStruct.fromSerializableMap,
        ),
        origin: deserializeParam(
          data['origin'],
          ParamType.LatLng,
          false,
        ),
        destination: deserializeParam(
          data['destination'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'DTRideRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTRideRequestStruct &&
        success == other.success &&
        message == other.message &&
        ride == other.ride &&
        origin == other.origin &&
        destination == other.destination;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([success, message, ride, origin, destination]);
}

DTRideRequestStruct createDTRideRequestStruct({
  bool? success,
  String? message,
  RideStruct? ride,
  LatLng? origin,
  LatLng? destination,
}) =>
    DTRideRequestStruct(
      success: success,
      message: message,
      ride: ride ?? RideStruct(),
      origin: origin,
      destination: destination,
    );
