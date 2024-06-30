// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teste_mobile_simples/database/providers/database_provider.dart';
import 'package:teste_mobile_simples/login/providers/login_provider.dart';
import 'package:teste_mobile_simples/user/storages/user_storage.dart';

class LoginPage extends ConsumerWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmailValid = ref.watch(isEmailValidProvider);
    final isPasswordValid = ref.watch(isPasswordValidProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.yellow[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * .6,
              child: Card(
                elevation: 3,
                color: Colors.orange[50],
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: Colors.yellow[800]),
                          filled: true,
                          fillColor: Colors.orange[100],
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty || !isEmailValid) {
                            return "E-mail deve conter '@' e maior que 3 chars";
                          }
                          return null;
                        },
                        onChanged: (value) => ref
                            .read(emailNotifierProvider.notifier)
                            .updateEmail(value),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: Colors.yellow[800]),
                          filled: true,
                          fillColor: Colors.orange[100],
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow[800]!),
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !isPasswordValid) {
                            return 'Senha deve ser maior que 3 chars';
                          }
                          return null;
                        },
                        onChanged: (value) => ref
                            .read(passwordNotifierProvider.notifier)
                            .updatePassword(value),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[800],
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate() &&
                              isEmailValid &&
                              isPasswordValid) {
                            final db = ref.watch(databaseProvider);
                            final id = await db.insertUser(
                              _emailController.text,
                              _passwordController.text,
                            );
                            await UserStorage.setUser(await db.getUserById(id));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Usuário salvo com sucesso!')),
                            );
                            await Navigator.of(context).pushNamed('/home');
                          }
                        },
                        child: const Text('Login',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
