// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTPesquisaReversaStruct extends BaseStruct {
  DTPesquisaReversaStruct({
    bool? success,
    CoordinatesStruct? coordinates,
    AddressStruct? address,
    String? googleFormattedAddress,
    String? placeId,
    int? allResultsCount,
  })  : _success = success,
        _coordinates = coordinates,
        _address = address,
        _googleFormattedAddress = googleFormattedAddress,
        _placeId = placeId,
        _allResultsCount = allResultsCount;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "coordinates" field.
  CoordinatesStruct? _coordinates;
  CoordinatesStruct get coordinates => _coordinates ?? CoordinatesStruct();
  set coordinates(CoordinatesStruct? val) => _coordinates = val;

  void updateCoordinates(Function(CoordinatesStruct) updateFn) {
    updateFn(_coordinates ??= CoordinatesStruct());
  }

  bool hasCoordinates() => _coordinates != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "google_formatted_address" field.
  String? _googleFormattedAddress;
  String get googleFormattedAddress => _googleFormattedAddress ?? '';
  set googleFormattedAddress(String? val) => _googleFormattedAddress = val;

  bool hasGoogleFormattedAddress() => _googleFormattedAddress != null;

  // "place_id" field.
  String? _placeId;
  String get placeId => _placeId ?? '';
  set placeId(String? val) => _placeId = val;

  bool hasPlaceId() => _placeId != null;

  // "all_results_count" field.
  int? _allResultsCount;
  int get allResultsCount => _allResultsCount ?? 0;
  set allResultsCount(int? val) => _allResultsCount = val;

  void incrementAllResultsCount(int amount) =>
      allResultsCount = allResultsCount + amount;

  bool hasAllResultsCount() => _allResultsCount != null;

  static DTPesquisaReversaStruct fromMap(Map<String, dynamic> data) =>
      DTPesquisaReversaStruct(
        success: data['success'] as bool?,
        coordinates: data['coordinates'] is CoordinatesStruct
            ? data['coordinates']
            : CoordinatesStruct.maybeFromMap(data['coordinates']),
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        googleFormattedAddress: data['google_formatted_address'] as String?,
        placeId: data['place_id'] as String?,
        allResultsCount: castToType<int>(data['all_results_count']),
      );

  static DTPesquisaReversaStruct? maybeFromMap(dynamic data) => data is Map
      ? DTPesquisaReversaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'coordinates': _coordinates?.toMap(),
        'address': _address?.toMap(),
        'google_formatted_address': _googleFormattedAddress,
        'place_id': _placeId,
        'all_results_count': _allResultsCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'coordinates': serializeParam(
          _coordinates,
          ParamType.DataStruct,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'google_formatted_address': serializeParam(
          _googleFormattedAddress,
          ParamType.String,
        ),
        'place_id': serializeParam(
          _placeId,
          ParamType.String,
        ),
        'all_results_count': serializeParam(
          _allResultsCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static DTPesquisaReversaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DTPesquisaReversaStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        coordinates: deserializeStructParam(
          data['coordinates'],
          ParamType.DataStruct,
          false,
          structBuilder: CoordinatesStruct.fromSerializableMap,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        googleFormattedAddress: deserializeParam(
          data['google_formatted_address'],
          ParamType.String,
          false,
        ),
        placeId: deserializeParam(
          data['place_id'],
          ParamType.String,
          false,
        ),
        allResultsCount: deserializeParam(
          data['all_results_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DTPesquisaReversaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTPesquisaReversaStruct &&
        success == other.success &&
        coordinates == other.coordinates &&
        address == other.address &&
        googleFormattedAddress == other.googleFormattedAddress &&
        placeId == other.placeId &&
        allResultsCount == other.allResultsCount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        success,
        coordinates,
        address,
        googleFormattedAddress,
        placeId,
        allResultsCount
      ]);
}

DTPesquisaReversaStruct createDTPesquisaReversaStruct({
  bool? success,
  CoordinatesStruct? coordinates,
  AddressStruct? address,
  String? googleFormattedAddress,
  String? placeId,
  int? allResultsCount,
}) =>
    DTPesquisaReversaStruct(
      success: success,
      coordinates: coordinates ?? CoordinatesStruct(),
      address: address ?? AddressStruct(),
      googleFormattedAddress: googleFormattedAddress,
      placeId: placeId,
      allResultsCount: allResultsCount,
    );
