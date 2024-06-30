import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:teste_mobile_simples/carro/components/carro_grid_item.dart';
import 'package:teste_mobile_simples/carro/providers/carros/carros_provider.dart';

import 'drawer/my_drawer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allCarros = ref.watch(carrosProvider).value;
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        leading: const Icon(Icons.person_outline),
        backgroundColor: Colors.yellow[800],
        title: const Text(
          'Desafio Mobile Simples',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: allCarros != null
          ? GridView.builder(
              padding: const EdgeInsets.only(left: 50, right: 50),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: allCarros.length,
              itemBuilder: (context, index) {
                return CarroGridItem(carro: allCarros[index]);
              },
            )
          : const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  ItemLoading(),
                  ItemLoading(),
                  ItemLoading(),
                ],
              ),
            ),
    );
  }
}

class ItemLoading extends StatelessWidget {
  const ItemLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[100]!,
        highlightColor: Colors.orange[400]!,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * .33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[100],
          ),
        ),
      ),
    );
  }
}
