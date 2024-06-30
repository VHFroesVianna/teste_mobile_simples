// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teste_mobile_simples/api/service/api_service.dart';
import 'package:teste_mobile_simples/carro/models/carro/carro.dart';
import 'package:teste_mobile_simples/database/providers/database_provider.dart';
import 'package:teste_mobile_simples/user/storages/user_storage.dart';

class CarroGridItem extends ConsumerWidget {
  final Carro carro;

  const CarroGridItem({
    super.key,
    required this.carro,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              carro.nome_modelo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Ano: ${carro.ano}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Cor: ${carro.cor}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'R\$ ${carro.valor.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () async {
                final db = ref.read(databaseProvider);
                await db.insertCarro(carro);
                final user = await UserStorage.getUser();
                if (user != null) {
                  await db.insertLead(user.id, carro.id);
                  await ApiService.postLeads();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Lead salva com sucesso!')),
                  );
                }
              },
              child: Text(
                'Eu quero',
                style: TextStyle(
                  color: Colors.red[800],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
