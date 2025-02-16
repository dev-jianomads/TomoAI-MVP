import '../database.dart';

class TasksTable extends SupabaseTable<TasksRow> {
  @override
  String get tableName => 'tasks';

  @override
  TasksRow createRow(Map<String, dynamic> data) => TasksRow(data);
}

class TasksRow extends SupabaseDataRow {
  TasksRow(Map<String, dynamic> data) : super(data);

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

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get emailId => getField<String>('email_id')!;
  set emailId(String value) => setField<String>('email_id', value);

  String? get progress => getField<String>('progress');
  set progress(String? value) => setField<String>('progress', value);

  String? get appLink => getField<String>('app_link');
  set appLink(String? value) => setField<String>('app_link', value);

  String? get appName => getField<String>('app_name');
  set appName(String? value) => setField<String>('app_name', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  String? get draftResponse => getField<String>('draft_response');
  set draftResponse(String? value) => setField<String>('draft_response', value);

  String? get timeBlocked => getField<String>('time_blocked');
  set timeBlocked(String? value) => setField<String>('time_blocked', value);
}
