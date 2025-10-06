import '../database.dart';

class WalletTransactionsTable extends SupabaseTable<WalletTransactionsRow> {
  @override
  String get tableName => 'wallet_transactions';

  @override
  WalletTransactionsRow createRow(Map<String, dynamic> data) =>
      WalletTransactionsRow(data);
}

class WalletTransactionsRow extends SupabaseDataRow {
  WalletTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WalletTransactionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get walletId => getField<String>('wallet_id');
  set walletId(String? value) => setField<String>('wallet_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get rideId => getField<String>('ride_id');
  set rideId(String? value) => setField<String>('ride_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
