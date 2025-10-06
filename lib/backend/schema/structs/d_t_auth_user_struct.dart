// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTAuthUserStruct extends BaseStruct {
  DTAuthUserStruct({
    String? id,
    DateTime? createdAt,
    String? name,
    String? email,
    String? phone,
    String? gender,
    String? country,
    String? province,
    String? district,
    bool? emailValidado,
    String? profilePic,
    bool? isAdmin,
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
        _isAdmin = isAdmin;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

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

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  static DTAuthUserStruct fromMap(Map<String, dynamic> data) =>
      DTAuthUserStruct(
        id: data['id'] as String?,
        createdAt: data['created_at'] as DateTime?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        gender: data['gender'] as String?,
        country: data['country'] as String?,
        province: data['province'] as String?,
        district: data['district'] as String?,
        emailValidado: data['email_validado'] as bool?,
        profilePic: data['profile_pic'] as String?,
        isAdmin: data['is_admin'] as bool?,
      );

  static DTAuthUserStruct? maybeFromMap(dynamic data) => data is Map
      ? DTAuthUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

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
        'is_admin': _isAdmin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
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
        'is_admin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DTAuthUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTAuthUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
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
        isAdmin: deserializeParam(
          data['is_admin'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DTAuthUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTAuthUserStruct &&
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
        isAdmin == other.isAdmin;
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
        isAdmin
      ]);
}

DTAuthUserStruct createDTAuthUserStruct({
  String? id,
  DateTime? createdAt,
  String? name,
  String? email,
  String? phone,
  String? gender,
  String? country,
  String? province,
  String? district,
  bool? emailValidado,
  String? profilePic,
  bool? isAdmin,
}) =>
    DTAuthUserStruct(
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
      isAdmin: isAdmin,
    );
