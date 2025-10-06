import '../database.dart';

class EmailVerificationsTable extends SupabaseTable<EmailVerificationsRow> {
  @override
  String get tableName => 'email_verifications';

  @override
  EmailVerificationsRow createRow(Map<String, dynamic> data) =>
      EmailVerificationsRow(data);
}

class EmailVerificationsRow extends SupabaseDataRow {
  EmailVerificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmailVerificationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get verificationCode => getField<String>('verification_code')!;
  set verificationCode(String value) =>
      setField<String>('verification_code', value);

  DateTime get expiresAt => getField<DateTime>('expires_at')!;
  set expiresAt(DateTime value) => setField<DateTime>('expires_at', value);

  bool? get confirmed => getField<bool>('confirmed');
  set confirmed(bool? value) => setField<bool>('confirmed', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
