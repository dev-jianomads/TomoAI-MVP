import '../database.dart';

class EmailThreadsTable extends SupabaseTable<EmailThreadsRow> {
  @override
  String get tableName => 'email_threads';

  @override
  EmailThreadsRow createRow(Map<String, dynamic> data) => EmailThreadsRow(data);
}

class EmailThreadsRow extends SupabaseDataRow {
  EmailThreadsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmailThreadsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get summary => getField<String>('summary');
  set summary(String? value) => setField<String>('summary', value);
}
