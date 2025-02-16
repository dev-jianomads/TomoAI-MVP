import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get provider => getField<String>('provider');
  set provider(String? value) => setField<String>('provider', value);

  String? get accessToken => getField<String>('access_token');
  set accessToken(String? value) => setField<String>('access_token', value);

  String? get refreshToken => getField<String>('refresh_token');
  set refreshToken(String? value) => setField<String>('refresh_token', value);

  int? get expiresIn => getField<int>('expires_in');
  set expiresIn(int? value) => setField<int>('expires_in', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get clientSecret => getField<String>('client_secret');
  set clientSecret(String? value) => setField<String>('client_secret', value);

  bool? get refreshExpired => getField<bool>('refresh_expired');
  set refreshExpired(bool? value) => setField<bool>('refresh_expired', value);

  String? get timeZone => getField<String>('time_zone');
  set timeZone(String? value) => setField<String>('time_zone', value);

  String? get authCode => getField<String>('auth_code');
  set authCode(String? value) => setField<String>('auth_code', value);
}
