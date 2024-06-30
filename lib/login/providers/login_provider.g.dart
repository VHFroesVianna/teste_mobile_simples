// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isEmailValidHash() => r'3e5069a9eb47b87daa4e2333e4be1b341df94c64';

/// See also [isEmailValid].
@ProviderFor(isEmailValid)
final isEmailValidProvider = AutoDisposeProvider<bool>.internal(
  isEmailValid,
  name: r'isEmailValidProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isEmailValidHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsEmailValidRef = AutoDisposeProviderRef<bool>;
String _$isPasswordValidHash() => r'4a8258efa1aa195b76729ec3d5eab9c94348fe69';

/// See also [isPasswordValid].
@ProviderFor(isPasswordValid)
final isPasswordValidProvider = AutoDisposeProvider<bool>.internal(
  isPasswordValid,
  name: r'isPasswordValidProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isPasswordValidHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsPasswordValidRef = AutoDisposeProviderRef<bool>;
String _$emailNotifierHash() => r'c0fd022fe6898efe34b21d7c42bae0eb482272bf';

/// See also [EmailNotifier].
@ProviderFor(EmailNotifier)
final emailNotifierProvider =
    AutoDisposeNotifierProvider<EmailNotifier, String>.internal(
  EmailNotifier.new,
  name: r'emailNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$emailNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EmailNotifier = AutoDisposeNotifier<String>;
String _$passwordNotifierHash() => r'5beec82b8200f01b8c292734964233180e71463f';

/// See also [PasswordNotifier].
@ProviderFor(PasswordNotifier)
final passwordNotifierProvider =
    AutoDisposeNotifierProvider<PasswordNotifier, String>.internal(
  PasswordNotifier.new,
  name: r'passwordNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$passwordNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PasswordNotifier = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
