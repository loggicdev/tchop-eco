import '../database.dart';

class VehiclesTable extends SupabaseTable<VehiclesRow> {
  @override
  String get tableName => 'vehicles';

  @override
  VehiclesRow createRow(Map<String, dynamic> data) => VehiclesRow(data);
}

class VehiclesRow extends SupabaseDataRow {
  VehiclesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VehiclesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get driverId => getField<String>('driver_id');
  set driverId(String? value) => setField<String>('driver_id', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get plate => getField<String>('plate');
  set plate(String? value) => setField<String>('plate', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  int? get capacity => getField<int>('capacity');
  set capacity(int? value) => setField<int>('capacity', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
