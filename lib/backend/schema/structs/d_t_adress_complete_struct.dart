// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTAdressCompleteStruct extends BaseStruct {
  DTAdressCompleteStruct({
    String? query,
    LocationStruct? location,
    List<ResultsStruct>? results,
    int? totalResults,
  })  : _query = query,
        _location = location,
        _results = results,
        _totalResults = totalResults;

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  set query(String? val) => _query = val;

  bool hasQuery() => _query != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "results" field.
  List<ResultsStruct>? _results;
  List<ResultsStruct> get results => _results ?? const [];
  set results(List<ResultsStruct>? val) => _results = val;

  void updateResults(Function(List<ResultsStruct>) updateFn) {
    updateFn(_results ??= []);
  }

  bool hasResults() => _results != null;

  // "total_results" field.
  int? _totalResults;
  int get totalResults => _totalResults ?? 0;
  set totalResults(int? val) => _totalResults = val;

  void incrementTotalResults(int amount) =>
      totalResults = totalResults + amount;

  bool hasTotalResults() => _totalResults != null;

  static DTAdressCompleteStruct fromMap(Map<String, dynamic> data) =>
      DTAdressCompleteStruct(
        query: data['query'] as String?,
        location: data['location'] is LocationStruct
            ? data['location']
            : LocationStruct.maybeFromMap(data['location']),
        results: getStructList(
          data['results'],
          ResultsStruct.fromMap,
        ),
        totalResults: castToType<int>(data['total_results']),
      );

  static DTAdressCompleteStruct? maybeFromMap(dynamic data) => data is Map
      ? DTAdressCompleteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'query': _query,
        'location': _location?.toMap(),
        'results': _results?.map((e) => e.toMap()).toList(),
        'total_results': _totalResults,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'query': serializeParam(
          _query,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
          isList: true,
        ),
        'total_results': serializeParam(
          _totalResults,
          ParamType.int,
        ),
      }.withoutNulls;

  static DTAdressCompleteStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DTAdressCompleteStruct(
        query: deserializeParam(
          data['query'],
          ParamType.String,
          false,
        ),
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        results: deserializeStructParam<ResultsStruct>(
          data['results'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultsStruct.fromSerializableMap,
        ),
        totalResults: deserializeParam(
          data['total_results'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DTAdressCompleteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DTAdressCompleteStruct &&
        query == other.query &&
        location == other.location &&
        listEquality.equals(results, other.results) &&
        totalResults == other.totalResults;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([query, location, results, totalResults]);
}

DTAdressCompleteStruct createDTAdressCompleteStruct({
  String? query,
  LocationStruct? location,
  int? totalResults,
}) =>
    DTAdressCompleteStruct(
      query: query,
      location: location ?? LocationStruct(),
      totalResults: totalResults,
    );
