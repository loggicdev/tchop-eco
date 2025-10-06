import '../database.dart';

class AddressHistoryTable extends SupabaseTable<AddressHistoryRow> {
  @override
  String get tableName => 'address_history';

  @override
  AddressHistoryRow createRow(Map<String, dynamic> data) =>
      AddressHistoryRow(data);
}

class AddressHistoryRow extends SupabaseDataRow {
  AddressHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddressHistoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  double get latitude => getField<double>('latitude')!;
  set latitude(double value) => setField<double>('latitude', value);

  double get longitude => getField<double>('longitude')!;
  set longitude(double value) => setField<double>('longitude', value);

  String get fullAddress => getField<String>('full_address')!;
  set fullAddress(String value) => setField<String>('full_address', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  String? get neighborhood => getField<String>('neighborhood');
  set neighborhood(String? value) => setField<String>('neighborhood', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get placeId => getField<String>('place_id');
  set placeId(String? value) => setField<String>('place_id', value);

  String? get googleFormattedAddress =>
      getField<String>('google_formatted_address');
  set googleFormattedAddress(String? value) =>
      setField<String>('google_formatted_address', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
