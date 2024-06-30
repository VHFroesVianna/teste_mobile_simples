import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class EmailNotifier extends _$EmailNotifier {
  @override
  String build() => '';

  void updateEmail(String value) => state = value;
}

@riverpod
class PasswordNotifier extends _$PasswordNotifier {
  @override
  String build() => '';

  void updatePassword(String value) => state = value;
}

@riverpod
bool isEmailValid(IsEmailValidRef ref) {
  final email = ref.watch(emailNotifierProvider);
  return (email.contains('@') ? true : false) && email.length >= 4;
}

@riverpod
bool isPasswordValid(IsPasswordValidRef ref) {
  final password = ref.watch(passwordNotifierProvider);
  return password.length >= 4;
}
