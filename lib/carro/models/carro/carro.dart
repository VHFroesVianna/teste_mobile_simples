// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'carro.freezed.dart';
part 'carro.g.dart';

@freezed
class Carro with _$Carro {
  Carro._();

  factory Carro({
    required final int id,
    required final int timestamp_cadastro,
    required final int modelo_id,
    required final int ano,
    required final String combustivel,
    required final int num_portas,
    required final String cor,
    required final String nome_modelo,
    required final double valor,
  }) = _Carro;

  factory Carro.fromJson(Map<String, dynamic> json) => _$CarroFromJson(json);

  static List listFromMap(Map map) {
    return map['cars'];
  }
}
