// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarroImpl _$$CarroImplFromJson(Map<String, dynamic> json) => _$CarroImpl(
      id: (json['id'] as num).toInt(),
      timestamp_cadastro: (json['timestamp_cadastro'] as num).toInt(),
      modelo_id: (json['modelo_id'] as num).toInt(),
      ano: (json['ano'] as num).toInt(),
      combustivel: json['combustivel'] as String,
      num_portas: (json['num_portas'] as num).toInt(),
      cor: json['cor'] as String,
      nome_modelo: json['nome_modelo'] as String,
      valor: (json['valor'] as num).toDouble(),
    );

Map<String, dynamic> _$$CarroImplToJson(_$CarroImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp_cadastro': instance.timestamp_cadastro,
      'modelo_id': instance.modelo_id,
      'ano': instance.ano,
      'combustivel': instance.combustivel,
      'num_portas': instance.num_portas,
      'cor': instance.cor,
      'nome_modelo': instance.nome_modelo,
      'valor': instance.valor,
    };
