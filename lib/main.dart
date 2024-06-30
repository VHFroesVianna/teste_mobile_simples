import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teste_mobile_simples/home_page.dart';
import 'package:teste_mobile_simples/login/view/login_page.dart';
import 'package:teste_mobile_simples/user/providers/user_logged_in_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: TesteMobileSimples()));
}

class TesteMobileSimples extends ConsumerWidget {
  const TesteMobileSimples({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialRoute = ref.watch(userProvider).value;
    return MaterialApp(
      routes: {
        '/home': (_) => const HomePage(),
        '/login': (_) => LoginPage(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: initialRoute == null ? LoginPage() : const HomePage(),
    );
  }
}
