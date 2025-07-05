import '../database.dart';

class TaskAgentChatHistoriesTable
    extends SupabaseTable<TaskAgentChatHistoriesRow> {
  @override
  String get tableName => 'task_agent_chat_histories';

  @override
  TaskAgentChatHistoriesRow createRow(Map<String, dynamic> data) =>
      TaskAgentChatHistoriesRow(data);
}

class TaskAgentChatHistoriesRow extends SupabaseDataRow {
  TaskAgentChatHistoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskAgentChatHistoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get sessionId => getField<String>('session_id')!;
  set sessionId(String value) => setField<String>('session_id', value);

  dynamic get message => getField<dynamic>('message')!;
  set message(dynamic value) => setField<dynamic>('message', value);
}
