// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:teste_mobile_simples/login/view/login_page.dart';
import 'package:teste_mobile_simples/user/storages/user_storage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  await UserStorage.deleteUser();
                  await Navigator.of(context).pushAndRemoveUntil(
                    (PageTransition(
                        child: LoginPage(),
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 250))),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Row(
                  children: [
                    Icon(Icons.logout_outlined, color: Colors.redAccent),
                    SizedBox(width: 10),
                    Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 1),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
