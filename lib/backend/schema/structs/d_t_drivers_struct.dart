// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTDriversStruct extends BaseStruct {
  DTDriversStruct({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? gender,
    String? province,
    String? district,
    String? profilePic,
    bool? isActive,
  })  : _id = id,
        _name = name,
        _email = email,
        _phone = phone,
        _gender = gender,
        _province = province,
        _district = district,
        _profilePic = profilePic,
        _isActive = isActive;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  set profilePic(String? val) => _profilePic = val;

  bool hasProfilePic() => _profilePic != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  static DTDriversStruct fromMap(Map<String, dynamic> data) => DTDriversStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        gender: data['gender'] as String?,
        province: data['province'] as String?,
        district: data['district'] as String?,
        profilePic: data['profile_pic'] as String?,
        isActive: data['is_active'] as bool?,
      );

  static DTDriversStruct? maybeFromMap(dynamic data) => data is Map
      ? DTDriversStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'phone': _phone,
        'gender': _gender,
        'province': _province,
        'district': _district,
        'profile_pic': _profilePic,
        'is_active': _isActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
        'district': serializeParam(
          _district,
          ParamType.String,
        ),
        'profile_pic': serializeParam(
          _profilePic,
          ParamType.String,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DTDriversStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTDriversStruct(
        id: deserializeParam(
          data['id'],
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
        profilePic: deserializeParam(
          data['profile_pic'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DTDriversStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTDriversStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        gender == other.gender &&
        province == other.province &&
        district == other.district &&
        profilePic == other.profilePic &&
        isActive == other.isActive;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        email,
        phone,
        gender,
        province,
        district,
        profilePic,
        isActive
      ]);
}

DTDriversStruct createDTDriversStruct({
  String? id,
  String? name,
  String? email,
  String? phone,
  String? gender,
  String? province,
  String? district,
  String? profilePic,
  bool? isActive,
}) =>
    DTDriversStruct(
      id: id,
      name: name,
      email: email,
      phone: phone,
      gender: gender,
      province: province,
      district: district,
      profilePic: profilePic,
      isActive: isActive,
    );
