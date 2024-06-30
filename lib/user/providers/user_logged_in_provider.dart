import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:teste_mobile_simples/user/models/user.dart';
import 'package:teste_mobile_simples/user/storages/user_storage.dart';

part 'user_logged_in_provider.g.dart';

@riverpod
Future<User?> user(UserRef ref) async => await UserStorage.getUser();
