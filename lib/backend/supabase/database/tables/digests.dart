import '../database.dart';

class DigestsTable extends SupabaseTable<DigestsRow> {
  @override
  String get tableName => 'digests';

  @override
  DigestsRow createRow(Map<String, dynamic> data) => DigestsRow(data);
}

class DigestsRow extends SupabaseDataRow {
  DigestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DigestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  DateTime? get from => getField<DateTime>('from');
  set from(DateTime? value) => setField<DateTime>('from', value);

  DateTime? get until => getField<DateTime>('until');
  set until(DateTime? value) => setField<DateTime>('until', value);
}
