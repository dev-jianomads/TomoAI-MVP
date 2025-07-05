import '../database.dart';

class EmailsTable extends SupabaseTable<EmailsRow> {
  @override
  String get tableName => 'emails';

  @override
  EmailsRow createRow(Map<String, dynamic> data) => EmailsRow(data);
}

class EmailsRow extends SupabaseDataRow {
  EmailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmailsTable();

  String get emailId => getField<String>('email_id')!;
  set emailId(String value) => setField<String>('email_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get summary => getField<String>('summary')!;
  set summary(String value) => setField<String>('summary', value);

  String get originalLink => getField<String>('original_link')!;
  set originalLink(String value) => setField<String>('original_link', value);

  String get sender => getField<String>('sender')!;
  set sender(String value) => setField<String>('sender', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  DateTime get dateReceived => getField<DateTime>('date_received')!;
  set dateReceived(DateTime value) =>
      setField<DateTime>('date_received', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get senderName => getField<String>('sender_name');
  set senderName(String? value) => setField<String>('sender_name', value);

  String? get senderEmail => getField<String>('sender_email');
  set senderEmail(String? value) => setField<String>('sender_email', value);

  String? get threadId => getField<String>('thread_id');
  set threadId(String? value) => setField<String>('thread_id', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  bool get relevant => getField<bool>('relevant')!;
  set relevant(bool value) => setField<bool>('relevant', value);

  String? get iosLink => getField<String>('ios_link');
  set iosLink(String? value) => setField<String>('ios_link', value);

  String? get htmlBody => getField<String>('html_body');
  set htmlBody(String? value) => setField<String>('html_body', value);

  dynamic get attachmentsMetadata => getField<dynamic>('attachments_metadata');
  set attachmentsMetadata(dynamic value) =>
      setField<dynamic>('attachments_metadata', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get relevanceExplanation => getField<String>('relevance_explanation');
  set relevanceExplanation(String? value) =>
      setField<String>('relevance_explanation', value);

  String? get ccEmails => getField<String>('cc_emails');
  set ccEmails(String? value) => setField<String>('cc_emails', value);

  String? get recipientEmails => getField<String>('recipient_emails');
  set recipientEmails(String? value) =>
      setField<String>('recipient_emails', value);
}
