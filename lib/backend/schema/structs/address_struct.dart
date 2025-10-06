// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends BaseStruct {
  AddressStruct({
    String? fullAddress,
    String? street,
    String? number,
    String? neighborhood,
    String? city,
    String? state,
    String? country,
    String? postalCode,
  })  : _fullAddress = fullAddress,
        _street = street,
        _number = number,
        _neighborhood = neighborhood,
        _city = city,
        _state = state,
        _country = country,
        _postalCode = postalCode;

  // "full_address" field.
  String? _fullAddress;
  String get fullAddress => _fullAddress ?? '';
  set fullAddress(String? val) => _fullAddress = val;

  bool hasFullAddress() => _fullAddress != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;

  bool hasStreet() => _street != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "neighborhood" field.
  String? _neighborhood;
  String get neighborhood => _neighborhood ?? '';
  set neighborhood(String? val) => _neighborhood = val;

  bool hasNeighborhood() => _neighborhood != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        fullAddress: data['full_address'] as String?,
        street: data['street'] as String?,
        number: data['number'] as String?,
        neighborhood: data['neighborhood'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        postalCode: data['postal_code'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'full_address': _fullAddress,
        'street': _street,
        'number': _number,
        'neighborhood': _neighborhood,
        'city': _city,
        'state': _state,
        'country': _country,
        'postal_code': _postalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'full_address': serializeParam(
          _fullAddress,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'neighborhood': serializeParam(
          _neighborhood,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'postal_code': serializeParam(
          _postalCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        fullAddress: deserializeParam(
          data['full_address'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        neighborhood: deserializeParam(
          data['neighborhood'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postal_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        fullAddress == other.fullAddress &&
        street == other.street &&
        number == other.number &&
        neighborhood == other.neighborhood &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fullAddress,
        street,
        number,
        neighborhood,
        city,
        state,
        country,
        postalCode
      ]);
}

AddressStruct createAddressStruct({
  String? fullAddress,
  String? street,
  String? number,
  String? neighborhood,
  String? city,
  String? state,
  String? country,
  String? postalCode,
}) =>
    AddressStruct(
      fullAddress: fullAddress,
      street: street,
      number: number,
      neighborhood: neighborhood,
      city: city,
      state: state,
      country: country,
      postalCode: postalCode,
    );
