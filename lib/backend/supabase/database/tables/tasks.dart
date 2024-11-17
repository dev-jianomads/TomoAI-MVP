import '../database.dart';

class TasksTable extends SupabaseTable<TasksRow> {
  @override
  String get tableName => 'tasks';

  @override
  TasksRow createRow(Map<String, dynamic> data) => TasksRow(data);
}

class TasksRow extends SupabaseDataRow {
  TasksRow(super.data);

  @override
  SupabaseTable get table => TasksTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String? get dueDate => getField<String>('due_date');
  set dueDate(String? value) => setField<String>('due_date', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get priority => getField<String>('priority');
  set priority(String? value) => setField<String>('priority', value);

  int? get feedback => getField<int>('feedback');
  set feedback(int? value) => setField<int>('feedback', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get emailSummary => getField<String>('email_summary');
  set emailSummary(String? value) => setField<String>('email_summary', value);
}
