import '../database.dart';

class ChatTable extends SupabaseTable<ChatRow> {
  @override
  String get tableName => 'chat';

  @override
  ChatRow createRow(Map<String, dynamic> data) => ChatRow(data);
}

class ChatRow extends SupabaseDataRow {
  ChatRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get sessionId => getField<String>('session_id');
  set sessionId(String? value) => setField<String>('session_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
