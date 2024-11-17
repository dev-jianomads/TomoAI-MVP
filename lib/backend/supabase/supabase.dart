import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://gbwmwbxitjsfrbuqjafz.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdid213YnhpdGpzZnJidXFqYWZ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA2OTk4NjYsImV4cCI6MjA0NjI3NTg2Nn0.qrr3regRx7fVO58mq2nha2RDPVdrIJDUO3SSlQ4x2CY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
