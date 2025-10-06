import '../database.dart';

class RidesTable extends SupabaseTable<RidesRow> {
  @override
  String get tableName => 'rides';

  @override
  RidesRow createRow(Map<String, dynamic> data) => RidesRow(data);
}

class RidesRow extends SupabaseDataRow {
  RidesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RidesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get vehicleId => getField<String>('vehicle_id');
  set vehicleId(String? value) => setField<String>('vehicle_id', value);

  String? get originAddress => getField<String>('origin_address');
  set originAddress(String? value) => setField<String>('origin_address', value);

  String? get originLocation => getField<String>('origin_location');
  set originLocation(String? value) =>
      setField<String>('origin_location', value);

  String? get destinationAddress => getField<String>('destination_address');
  set destinationAddress(String? value) =>
      setField<String>('destination_address', value);

  String? get destinationLocation => getField<String>('destination_location');
  set destinationLocation(String? value) =>
      setField<String>('destination_location', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get cancelReason => getField<String>('cancel_reason');
  set cancelReason(String? value) => setField<String>('cancel_reason', value);

  double? get estimatedDistanceKm => getField<double>('estimated_distance_km');
  set estimatedDistanceKm(double? value) =>
      setField<double>('estimated_distance_km', value);

  double? get estimatedDurationMin =>
      getField<double>('estimated_duration_min');
  set estimatedDurationMin(double? value) =>
      setField<double>('estimated_duration_min', value);

  double? get actualDistanceKm => getField<double>('actual_distance_km');
  set actualDistanceKm(double? value) =>
      setField<double>('actual_distance_km', value);

  double? get actualDurationMin => getField<double>('actual_duration_min');
  set actualDurationMin(double? value) =>
      setField<double>('actual_duration_min', value);

  double? get fareAmount => getField<double>('fare_amount');
  set fareAmount(double? value) => setField<double>('fare_amount', value);

  double? get platformFee => getField<double>('platform_fee');
  set platformFee(double? value) => setField<double>('platform_fee', value);

  double? get driverPayment => getField<double>('driver_payment');
  set driverPayment(double? value) => setField<double>('driver_payment', value);

  String? get routePolyline => getField<String>('route_polyline');
  set routePolyline(String? value) => setField<String>('route_polyline', value);

  String? get pricingConfigId => getField<String>('pricing_config_id');
  set pricingConfigId(String? value) =>
      setField<String>('pricing_config_id', value);

  String? get dynamicMultiplierId => getField<String>('dynamic_multiplier_id');
  set dynamicMultiplierId(String? value) =>
      setField<String>('dynamic_multiplier_id', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get originLatitude => getField<double>('origin_latitude');
  set originLatitude(double? value) =>
      setField<double>('origin_latitude', value);

  double? get originLongitude => getField<double>('origin_longitude');
  set originLongitude(double? value) =>
      setField<double>('origin_longitude', value);

  double? get destinationLatitude => getField<double>('destination_latitude');
  set destinationLatitude(double? value) =>
      setField<double>('destination_latitude', value);

  double? get destinationLongitude => getField<double>('destination_longitude');
  set destinationLongitude(double? value) =>
      setField<double>('destination_longitude', value);

  double? get driverLatitude => getField<double>('driver_latitude');
  set driverLatitude(double? value) =>
      setField<double>('driver_latitude', value);

  double? get driverLongitude => getField<double>('driver_longitude');
  set driverLongitude(double? value) =>
      setField<double>('driver_longitude', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get notificationSentAt =>
      getField<DateTime>('notification_sent_at');
  set notificationSentAt(DateTime? value) =>
      setField<DateTime>('notification_sent_at', value);

  String? get driverId => getField<String>('driver_id');
  set driverId(String? value) => setField<String>('driver_id', value);

  String? get passengerName => getField<String>('passenger_name');
  set passengerName(String? value) => setField<String>('passenger_name', value);

  double? get estimatedFare => getField<double>('estimated_fare');
  set estimatedFare(double? value) => setField<double>('estimated_fare', value);
}
