// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZzRidesStruct extends BaseStruct {
  ZzRidesStruct({
    DateTime? data,
    String? id,
    String? motorista,
    String? status,
    String? acoes,
    String? motoristaPhoto,
    int? ridesqtd,
    String? telefone,
    String? userStatus,
    int? stars,
  })  : _data = data,
        _id = id,
        _motorista = motorista,
        _status = status,
        _acoes = acoes,
        _motoristaPhoto = motoristaPhoto,
        _ridesqtd = ridesqtd,
        _telefone = telefone,
        _userStatus = userStatus,
        _stars = stars;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "motorista" field.
  String? _motorista;
  String get motorista => _motorista ?? '';
  set motorista(String? val) => _motorista = val;

  bool hasMotorista() => _motorista != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "acoes" field.
  String? _acoes;
  String get acoes => _acoes ?? '';
  set acoes(String? val) => _acoes = val;

  bool hasAcoes() => _acoes != null;

  // "motoristaPhoto" field.
  String? _motoristaPhoto;
  String get motoristaPhoto => _motoristaPhoto ?? '';
  set motoristaPhoto(String? val) => _motoristaPhoto = val;

  bool hasMotoristaPhoto() => _motoristaPhoto != null;

  // "ridesqtd" field.
  int? _ridesqtd;
  int get ridesqtd => _ridesqtd ?? 0;
  set ridesqtd(int? val) => _ridesqtd = val;

  void incrementRidesqtd(int amount) => ridesqtd = ridesqtd + amount;

  bool hasRidesqtd() => _ridesqtd != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '+258 123 45678';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "user_status" field.
  String? _userStatus;
  String get userStatus => _userStatus ?? '';
  set userStatus(String? val) => _userStatus = val;

  bool hasUserStatus() => _userStatus != null;

  // "stars" field.
  int? _stars;
  int get stars => _stars ?? 0;
  set stars(int? val) => _stars = val;

  void incrementStars(int amount) => stars = stars + amount;

  bool hasStars() => _stars != null;

  static ZzRidesStruct fromMap(Map<String, dynamic> data) => ZzRidesStruct(
        data: data['data'] as DateTime?,
        id: data['id'] as String?,
        motorista: data['motorista'] as String?,
        status: data['status'] as String?,
        acoes: data['acoes'] as String?,
        motoristaPhoto: data['motoristaPhoto'] as String?,
        ridesqtd: castToType<int>(data['ridesqtd']),
        telefone: data['telefone'] as String?,
        userStatus: data['user_status'] as String?,
        stars: castToType<int>(data['stars']),
      );

  static ZzRidesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ZzRidesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
        'id': _id,
        'motorista': _motorista,
        'status': _status,
        'acoes': _acoes,
        'motoristaPhoto': _motoristaPhoto,
        'ridesqtd': _ridesqtd,
        'telefone': _telefone,
        'user_status': _userStatus,
        'stars': _stars,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'motorista': serializeParam(
          _motorista,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'acoes': serializeParam(
          _acoes,
          ParamType.String,
        ),
        'motoristaPhoto': serializeParam(
          _motoristaPhoto,
          ParamType.String,
        ),
        'ridesqtd': serializeParam(
          _ridesqtd,
          ParamType.int,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'user_status': serializeParam(
          _userStatus,
          ParamType.String,
        ),
        'stars': serializeParam(
          _stars,
          ParamType.int,
        ),
      }.withoutNulls;

  static ZzRidesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ZzRidesStruct(
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        motorista: deserializeParam(
          data['motorista'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        acoes: deserializeParam(
          data['acoes'],
          ParamType.String,
          false,
        ),
        motoristaPhoto: deserializeParam(
          data['motoristaPhoto'],
          ParamType.String,
          false,
        ),
        ridesqtd: deserializeParam(
          data['ridesqtd'],
          ParamType.int,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        userStatus: deserializeParam(
          data['user_status'],
          ParamType.String,
          false,
        ),
        stars: deserializeParam(
          data['stars'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ZzRidesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ZzRidesStruct &&
        data == other.data &&
        id == other.id &&
        motorista == other.motorista &&
        status == other.status &&
        acoes == other.acoes &&
        motoristaPhoto == other.motoristaPhoto &&
        ridesqtd == other.ridesqtd &&
        telefone == other.telefone &&
        userStatus == other.userStatus &&
        stars == other.stars;
  }

  @override
  int get hashCode => const ListEquality().hash([
        data,
        id,
        motorista,
        status,
        acoes,
        motoristaPhoto,
        ridesqtd,
        telefone,
        userStatus,
        stars
      ]);
}

ZzRidesStruct createZzRidesStruct({
  DateTime? data,
  String? id,
  String? motorista,
  String? status,
  String? acoes,
  String? motoristaPhoto,
  int? ridesqtd,
  String? telefone,
  String? userStatus,
  int? stars,
}) =>
    ZzRidesStruct(
      data: data,
      id: id,
      motorista: motorista,
      status: status,
      acoes: acoes,
      motoristaPhoto: motoristaPhoto,
      ridesqtd: ridesqtd,
      telefone: telefone,
      userStatus: userStatus,
      stars: stars,
    );
