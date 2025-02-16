import '../database.dart';

class PreferencesTable extends SupabaseTable<PreferencesRow> {
  @override
  String get tableName => 'preferences';

  @override
  PreferencesRow createRow(Map<String, dynamic> data) => PreferencesRow(data);
}

class PreferencesRow extends SupabaseDataRow {
  PreferencesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PreferencesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);
}
