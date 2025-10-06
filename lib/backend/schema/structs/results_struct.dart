// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsStruct extends BaseStruct {
  ResultsStruct({
    String? id,
    String? description,
    String? mainText,
    String? secondaryText,
    double? distanceKm,
    double? lat,
    double? lng,
  })  : _id = id,
        _description = description,
        _mainText = mainText,
        _secondaryText = secondaryText,
        _distanceKm = distanceKm,
        _lat = lat,
        _lng = lng;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "main_text" field.
  String? _mainText;
  String get mainText => _mainText ?? '';
  set mainText(String? val) => _mainText = val;

  bool hasMainText() => _mainText != null;

  // "secondary_text" field.
  String? _secondaryText;
  String get secondaryText => _secondaryText ?? '';
  set secondaryText(String? val) => _secondaryText = val;

  bool hasSecondaryText() => _secondaryText != null;

  // "distance_km" field.
  double? _distanceKm;
  double get distanceKm => _distanceKm ?? 0.0;
  set distanceKm(double? val) => _distanceKm = val;

  void incrementDistanceKm(double amount) => distanceKm = distanceKm + amount;

  bool hasDistanceKm() => _distanceKm != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "lng" field.
  double? _lng;
  double get lng => _lng ?? 0.0;
  set lng(double? val) => _lng = val;

  void incrementLng(double amount) => lng = lng + amount;

  bool hasLng() => _lng != null;

  static ResultsStruct fromMap(Map<String, dynamic> data) => ResultsStruct(
        id: data['id'] as String?,
        description: data['description'] as String?,
        mainText: data['main_text'] as String?,
        secondaryText: data['secondary_text'] as String?,
        distanceKm: castToType<double>(data['distance_km']),
        lat: castToType<double>(data['lat']),
        lng: castToType<double>(data['lng']),
      );

  static ResultsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'main_text': _mainText,
        'secondary_text': _secondaryText,
        'distance_km': _distanceKm,
        'lat': _lat,
        'lng': _lng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'main_text': serializeParam(
          _mainText,
          ParamType.String,
        ),
        'secondary_text': serializeParam(
          _secondaryText,
          ParamType.String,
        ),
        'distance_km': serializeParam(
          _distanceKm,
          ParamType.double,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.double,
        ),
      }.withoutNulls;

  static ResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        mainText: deserializeParam(
          data['main_text'],
          ParamType.String,
          false,
        ),
        secondaryText: deserializeParam(
          data['secondary_text'],
          ParamType.String,
          false,
        ),
        distanceKm: deserializeParam(
          data['distance_km'],
          ParamType.double,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultsStruct &&
        id == other.id &&
        description == other.description &&
        mainText == other.mainText &&
        secondaryText == other.secondaryText &&
        distanceKm == other.distanceKm &&
        lat == other.lat &&
        lng == other.lng;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, description, mainText, secondaryText, distanceKm, lat, lng]);
}

ResultsStruct createResultsStruct({
  String? id,
  String? description,
  String? mainText,
  String? secondaryText,
  double? distanceKm,
  double? lat,
  double? lng,
}) =>
    ResultsStruct(
      id: id,
      description: description,
      mainText: mainText,
      secondaryText: secondaryText,
      distanceKm: distanceKm,
      lat: lat,
      lng: lng,
    );
