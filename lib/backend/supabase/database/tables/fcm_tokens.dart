import '../database.dart';

class FcmTokensTable extends SupabaseTable<FcmTokensRow> {
  @override
  String get tableName => 'fcm_tokens';

  @override
  FcmTokensRow createRow(Map<String, dynamic> data) => FcmTokensRow(data);
}

class FcmTokensRow extends SupabaseDataRow {
  FcmTokensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FcmTokensTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get fcmToken => getField<String>('fcm_token')!;
  set fcmToken(String value) => setField<String>('fcm_token', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  String? get platform => getField<String>('platform');
  set platform(String? value) => setField<String>('platform', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
