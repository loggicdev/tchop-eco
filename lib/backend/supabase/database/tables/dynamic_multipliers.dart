import '../database.dart';

class DynamicMultipliersTable extends SupabaseTable<DynamicMultipliersRow> {
  @override
  String get tableName => 'dynamic_multipliers';

  @override
  DynamicMultipliersRow createRow(Map<String, dynamic> data) =>
      DynamicMultipliersRow(data);
}

class DynamicMultipliersRow extends SupabaseDataRow {
  DynamicMultipliersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DynamicMultipliersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get multiplier => getField<double>('multiplier');
  set multiplier(double? value) => setField<double>('multiplier', value);

  PostgresTime? get startTime => getField<PostgresTime>('start_time');
  set startTime(PostgresTime? value) =>
      setField<PostgresTime>('start_time', value);

  PostgresTime? get endTime => getField<PostgresTime>('end_time');
  set endTime(PostgresTime? value) => setField<PostgresTime>('end_time', value);

  List<String> get daysOfWeek => getListField<String>('days_of_week');
  set daysOfWeek(List<String>? value) =>
      setListField<String>('days_of_week', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
