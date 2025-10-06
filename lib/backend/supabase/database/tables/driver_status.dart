import '../database.dart';

class DriverStatusTable extends SupabaseTable<DriverStatusRow> {
  @override
  String get tableName => 'driver_status';

  @override
  DriverStatusRow createRow(Map<String, dynamic> data) => DriverStatusRow(data);
}

class DriverStatusRow extends SupabaseDataRow {
  DriverStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DriverStatusTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get driverId => getField<String>('driver_id');
  set driverId(String? value) => setField<String>('driver_id', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  String? get currentLocation => getField<String>('current_location');
  set currentLocation(String? value) =>
      setField<String>('current_location', value);

  DateTime? get lastActiveAt => getField<DateTime>('last_active_at');
  set lastActiveAt(DateTime? value) =>
      setField<DateTime>('last_active_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
