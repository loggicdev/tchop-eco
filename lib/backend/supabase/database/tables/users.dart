import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get province => getField<String>('province');
  set province(String? value) => setField<String>('province', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  bool? get emailValidado => getField<bool>('email_validado');
  set emailValidado(bool? value) => setField<bool>('email_validado', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);

  String? get addressStreet => getField<String>('address_street');
  set addressStreet(String? value) => setField<String>('address_street', value);

  String? get addressNumber => getField<String>('address_number');
  set addressNumber(String? value) => setField<String>('address_number', value);

  String? get addressComplement => getField<String>('address_complement');
  set addressComplement(String? value) =>
      setField<String>('address_complement', value);

  String? get addressPostalCode => getField<String>('address_postal_code');
  set addressPostalCode(String? value) =>
      setField<String>('address_postal_code', value);

  bool? get isAdmin => getField<bool>('is_admin');
  set isAdmin(bool? value) => setField<bool>('is_admin', value);

  String? get userType => getField<String>('user_type');
  set userType(String? value) => setField<String>('user_type', value);
}
