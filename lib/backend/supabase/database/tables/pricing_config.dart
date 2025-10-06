import '../database.dart';

class PricingConfigTable extends SupabaseTable<PricingConfigRow> {
  @override
  String get tableName => 'pricing_config';

  @override
  PricingConfigRow createRow(Map<String, dynamic> data) =>
      PricingConfigRow(data);
}

class PricingConfigRow extends SupabaseDataRow {
  PricingConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PricingConfigTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  double? get baseFare => getField<double>('base_fare');
  set baseFare(double? value) => setField<double>('base_fare', value);

  double? get costPerKm => getField<double>('cost_per_km');
  set costPerKm(double? value) => setField<double>('cost_per_km', value);

  double? get costPerMinute => getField<double>('cost_per_minute');
  set costPerMinute(double? value) =>
      setField<double>('cost_per_minute', value);

  double? get minimumFare => getField<double>('minimum_fare');
  set minimumFare(double? value) => setField<double>('minimum_fare', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get platformFee => getField<double>('platform_fee');
  set platformFee(double? value) => setField<double>('platform_fee', value);
}
