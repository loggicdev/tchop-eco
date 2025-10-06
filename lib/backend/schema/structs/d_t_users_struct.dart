// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTUsersStruct extends BaseStruct {
  DTUsersStruct({
    String? id,
    String? createdAt,
    String? name,
    String? email,
    String? phone,
    String? gender,
    String? country,
    String? province,
    String? district,
    bool? emailValidado,
    String? profilePic,
    String? addressStreet,
    String? addressNumber,
    String? addressComplement,
    String? addressPostalCode,
    String? userType,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _email = email,
        _phone = phone,
        _gender = gender,
        _country = country,
        _province = province,
        _district = district,
        _emailValidado = emailValidado,
        _profilePic = profilePic,
        _addressStreet = addressStreet,
        _addressNumber = addressNumber,
        _addressComplement = addressComplement,
        _addressPostalCode = addressPostalCode,
        _userType = userType;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;

  bool hasProvince() => _province != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  set district(String? val) => _district = val;

  bool hasDistrict() => _district != null;

  // "email_validado" field.
  bool? _emailValidado;
  bool get emailValidado => _emailValidado ?? false;
  set emailValidado(bool? val) => _emailValidado = val;

  bool hasEmailValidado() => _emailValidado != null;

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  set profilePic(String? val) => _profilePic = val;

  bool hasProfilePic() => _profilePic != null;

  // "address_street" field.
  String? _addressStreet;
  String get addressStreet => _addressStreet ?? '';
  set addressStreet(String? val) => _addressStreet = val;

  bool hasAddressStreet() => _addressStreet != null;

  // "address_number" field.
  String? _addressNumber;
  String get addressNumber => _addressNumber ?? '';
  set addressNumber(String? val) => _addressNumber = val;

  bool hasAddressNumber() => _addressNumber != null;

  // "address_complement" field.
  String? _addressComplement;
  String get addressComplement => _addressComplement ?? '';
  set addressComplement(String? val) => _addressComplement = val;

  bool hasAddressComplement() => _addressComplement != null;

  // "address_postal_code" field.
  String? _addressPostalCode;
  String get addressPostalCode => _addressPostalCode ?? '';
  set addressPostalCode(String? val) => _addressPostalCode = val;

  bool hasAddressPostalCode() => _addressPostalCode != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  set userType(String? val) => _userType = val;

  bool hasUserType() => _userType != null;

  static DTUsersStruct fromMap(Map<String, dynamic> data) => DTUsersStruct(
        id: data['id'] as String?,
        createdAt: data['created_at'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        gender: data['gender'] as String?,
        country: data['country'] as String?,
        province: data['province'] as String?,
        district: data['district'] as String?,
        emailValidado: data['email_validado'] as bool?,
        profilePic: data['profile_pic'] as String?,
        addressStreet: data['address_street'] as String?,
        addressNumber: data['address_number'] as String?,
        addressComplement: data['address_complement'] as String?,
        addressPostalCode: data['address_postal_code'] as String?,
        userType: data['user_type'] as String?,
      );

  static DTUsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? DTUsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'email': _email,
        'phone': _phone,
        'gender': _gender,
        'country': _country,
        'province': _province,
        'district': _district,
        'email_validado': _emailValidado,
        'profile_pic': _profilePic,
        'address_street': _addressStreet,
        'address_number': _addressNumber,
        'address_complement': _addressComplement,
        'address_postal_code': _addressPostalCode,
        'user_type': _userType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
        'district': serializeParam(
          _district,
          ParamType.String,
        ),
        'email_validado': serializeParam(
          _emailValidado,
          ParamType.bool,
        ),
        'profile_pic': serializeParam(
          _profilePic,
          ParamType.String,
        ),
        'address_street': serializeParam(
          _addressStreet,
          ParamType.String,
        ),
        'address_number': serializeParam(
          _addressNumber,
          ParamType.String,
        ),
        'address_complement': serializeParam(
          _addressComplement,
          ParamType.String,
        ),
        'address_postal_code': serializeParam(
          _addressPostalCode,
          ParamType.String,
        ),
        'user_type': serializeParam(
          _userType,
          ParamType.String,
        ),
      }.withoutNulls;

  static DTUsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTUsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
        district: deserializeParam(
          data['district'],
          ParamType.String,
          false,
        ),
        emailValidado: deserializeParam(
          data['email_validado'],
          ParamType.bool,
          false,
        ),
        profilePic: deserializeParam(
          data['profile_pic'],
          ParamType.String,
          false,
        ),
        addressStreet: deserializeParam(
          data['address_street'],
          ParamType.String,
          false,
        ),
        addressNumber: deserializeParam(
          data['address_number'],
          ParamType.String,
          false,
        ),
        addressComplement: deserializeParam(
          data['address_complement'],
          ParamType.String,
          false,
        ),
        addressPostalCode: deserializeParam(
          data['address_postal_code'],
          ParamType.String,
          false,
        ),
        userType: deserializeParam(
          data['user_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DTUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTUsersStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        gender == other.gender &&
        country == other.country &&
        province == other.province &&
        district == other.district &&
        emailValidado == other.emailValidado &&
        profilePic == other.profilePic &&
        addressStreet == other.addressStreet &&
        addressNumber == other.addressNumber &&
        addressComplement == other.addressComplement &&
        addressPostalCode == other.addressPostalCode &&
        userType == other.userType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        name,
        email,
        phone,
        gender,
        country,
        province,
        district,
        emailValidado,
        profilePic,
        addressStreet,
        addressNumber,
        addressComplement,
        addressPostalCode,
        userType
      ]);
}

DTUsersStruct createDTUsersStruct({
  String? id,
  String? createdAt,
  String? name,
  String? email,
  String? phone,
  String? gender,
  String? country,
  String? province,
  String? district,
  bool? emailValidado,
  String? profilePic,
  String? addressStreet,
  String? addressNumber,
  String? addressComplement,
  String? addressPostalCode,
  String? userType,
}) =>
    DTUsersStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      email: email,
      phone: phone,
      gender: gender,
      country: country,
      province: province,
      district: district,
      emailValidado: emailValidado,
      profilePic: profilePic,
      addressStreet: addressStreet,
      addressNumber: addressNumber,
      addressComplement: addressComplement,
      addressPostalCode: addressPostalCode,
      userType: userType,
    );
