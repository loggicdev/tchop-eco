import '../database.dart';

class RatingsTable extends SupabaseTable<RatingsRow> {
  @override
  String get tableName => 'ratings';

  @override
  RatingsRow createRow(Map<String, dynamic> data) => RatingsRow(data);
}

class RatingsRow extends SupabaseDataRow {
  RatingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RatingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get rideId => getField<String>('ride_id');
  set rideId(String? value) => setField<String>('ride_id', value);

  String? get raterId => getField<String>('rater_id');
  set raterId(String? value) => setField<String>('rater_id', value);

  String? get rateeId => getField<String>('ratee_id');
  set rateeId(String? value) => setField<String>('ratee_id', value);

  int? get score => getField<int>('score');
  set score(int? value) => setField<int>('score', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
