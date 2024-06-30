import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:teste_mobile_simples/database/service/database_service.dart';

part 'database_provider.g.dart';

@riverpod
DatabaseService database(DatabaseRef ref) => DatabaseService();
