import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:teste_mobile_simples/carro/models/carro/carro.dart';
import 'package:http/http.dart' as http;

part 'carros_provider.g.dart';

@riverpod
Future<List<Carro>> carros(ref) async {
  var url = Uri.https('wswork.com.br', '/cars.json');
  final decoded =
      await http.get(url).then((response) => json.decode(response.body));
  return Carro.listFromMap(decoded)
      .map((carro) => Carro.fromJson(carro))
      .toList();
}
