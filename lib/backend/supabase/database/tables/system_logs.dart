import '../database.dart';

class SystemLogsTable extends SupabaseTable<SystemLogsRow> {
  @override
  String get tableName => 'system_logs';

  @override
  SystemLogsRow createRow(Map<String, dynamic> data) => SystemLogsRow(data);
}

class SystemLogsRow extends SupabaseDataRow {
  SystemLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SystemLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get logType => getField<String>('log_type');
  set logType(String? value) => setField<String>('log_type', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
