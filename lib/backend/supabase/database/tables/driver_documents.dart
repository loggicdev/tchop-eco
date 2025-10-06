import '../database.dart';

class DriverDocumentsTable extends SupabaseTable<DriverDocumentsRow> {
  @override
  String get tableName => 'driver_documents';

  @override
  DriverDocumentsRow createRow(Map<String, dynamic> data) =>
      DriverDocumentsRow(data);
}

class DriverDocumentsRow extends SupabaseDataRow {
  DriverDocumentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DriverDocumentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get driverId => getField<String>('driver_id');
  set driverId(String? value) => setField<String>('driver_id', value);

  String? get documentType => getField<String>('document_type');
  set documentType(String? value) => setField<String>('document_type', value);

  String? get documentUrl => getField<String>('document_url');
  set documentUrl(String? value) => setField<String>('document_url', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
