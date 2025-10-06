// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OriginLatlngStruct extends BaseStruct {
  OriginLatlngStruct({
    double? latitude,
    double? longitude,
  })  : _latitude = latitude,
        _longitude = longitude;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  static OriginLatlngStruct fromMap(Map<String, dynamic> data) =>
      OriginLatlngStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
      );

  static OriginLatlngStruct? maybeFromMap(dynamic data) => data is Map
      ? OriginLatlngStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
      }.withoutNulls;

  static OriginLatlngStruct fromSerializableMap(Map<String, dynamic> data) =>
      OriginLatlngStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OriginLatlngStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OriginLatlngStruct &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([latitude, longitude]);
}

OriginLatlngStruct createOriginLatlngStruct({
  double? latitude,
  double? longitude,
}) =>
    OriginLatlngStruct(
      latitude: latitude,
      longitude: longitude,
    );
