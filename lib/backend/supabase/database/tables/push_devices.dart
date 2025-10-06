import '../database.dart';

class PushDevicesTable extends SupabaseTable<PushDevicesRow> {
  @override
  String get tableName => 'push_devices';

  @override
  PushDevicesRow createRow(Map<String, dynamic> data) => PushDevicesRow(data);
}

class PushDevicesRow extends SupabaseDataRow {
  PushDevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PushDevicesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get deviceToken => getField<String>('device_token');
  set deviceToken(String? value) => setField<String>('device_token', value);

  String? get deviceType => getField<String>('device_type');
  set deviceType(String? value) => setField<String>('device_type', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
