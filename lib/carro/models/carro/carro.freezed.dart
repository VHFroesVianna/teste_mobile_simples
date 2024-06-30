// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Carro _$CarroFromJson(Map<String, dynamic> json) {
  return _Carro.fromJson(json);
}

/// @nodoc
mixin _$Carro {
  int get id => throw _privateConstructorUsedError;
  int get timestamp_cadastro => throw _privateConstructorUsedError;
  int get modelo_id => throw _privateConstructorUsedError;
  int get ano => throw _privateConstructorUsedError;
  String get combustivel => throw _privateConstructorUsedError;
  int get num_portas => throw _privateConstructorUsedError;
  String get cor => throw _privateConstructorUsedError;
  String get nome_modelo => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarroCopyWith<Carro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarroCopyWith<$Res> {
  factory $CarroCopyWith(Carro value, $Res Function(Carro) then) =
      _$CarroCopyWithImpl<$Res, Carro>;
  @useResult
  $Res call(
      {int id,
      int timestamp_cadastro,
      int modelo_id,
      int ano,
      String combustivel,
      int num_portas,
      String cor,
      String nome_modelo,
      double valor});
}

/// @nodoc
class _$CarroCopyWithImpl<$Res, $Val extends Carro>
    implements $CarroCopyWith<$Res> {
  _$CarroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp_cadastro = null,
    Object? modelo_id = null,
    Object? ano = null,
    Object? combustivel = null,
    Object? num_portas = null,
    Object? cor = null,
    Object? nome_modelo = null,
    Object? valor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp_cadastro: null == timestamp_cadastro
          ? _value.timestamp_cadastro
          : timestamp_cadastro // ignore: cast_nullable_to_non_nullable
              as int,
      modelo_id: null == modelo_id
          ? _value.modelo_id
          : modelo_id // ignore: cast_nullable_to_non_nullable
              as int,
      ano: null == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int,
      combustivel: null == combustivel
          ? _value.combustivel
          : combustivel // ignore: cast_nullable_to_non_nullable
              as String,
      num_portas: null == num_portas
          ? _value.num_portas
          : num_portas // ignore: cast_nullable_to_non_nullable
              as int,
      cor: null == cor
          ? _value.cor
          : cor // ignore: cast_nullable_to_non_nullable
              as String,
      nome_modelo: null == nome_modelo
          ? _value.nome_modelo
          : nome_modelo // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarroImplCopyWith<$Res> implements $CarroCopyWith<$Res> {
  factory _$$CarroImplCopyWith(
          _$CarroImpl value, $Res Function(_$CarroImpl) then) =
      __$$CarroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int timestamp_cadastro,
      int modelo_id,
      int ano,
      String combustivel,
      int num_portas,
      String cor,
      String nome_modelo,
      double valor});
}

/// @nodoc
class __$$CarroImplCopyWithImpl<$Res>
    extends _$CarroCopyWithImpl<$Res, _$CarroImpl>
    implements _$$CarroImplCopyWith<$Res> {
  __$$CarroImplCopyWithImpl(
      _$CarroImpl _value, $Res Function(_$CarroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp_cadastro = null,
    Object? modelo_id = null,
    Object? ano = null,
    Object? combustivel = null,
    Object? num_portas = null,
    Object? cor = null,
    Object? nome_modelo = null,
    Object? valor = null,
  }) {
    return _then(_$CarroImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp_cadastro: null == timestamp_cadastro
          ? _value.timestamp_cadastro
          : timestamp_cadastro // ignore: cast_nullable_to_non_nullable
              as int,
      modelo_id: null == modelo_id
          ? _value.modelo_id
          : modelo_id // ignore: cast_nullable_to_non_nullable
              as int,
      ano: null == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int,
      combustivel: null == combustivel
          ? _value.combustivel
          : combustivel // ignore: cast_nullable_to_non_nullable
              as String,
      num_portas: null == num_portas
          ? _value.num_portas
          : num_portas // ignore: cast_nullable_to_non_nullable
              as int,
      cor: null == cor
          ? _value.cor
          : cor // ignore: cast_nullable_to_non_nullable
              as String,
      nome_modelo: null == nome_modelo
          ? _value.nome_modelo
          : nome_modelo // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarroImpl extends _Carro {
  _$CarroImpl(
      {required this.id,
      required this.timestamp_cadastro,
      required this.modelo_id,
      required this.ano,
      required this.combustivel,
      required this.num_portas,
      required this.cor,
      required this.nome_modelo,
      required this.valor})
      : super._();

  factory _$CarroImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarroImplFromJson(json);

  @override
  final int id;
  @override
  final int timestamp_cadastro;
  @override
  final int modelo_id;
  @override
  final int ano;
  @override
  final String combustivel;
  @override
  final int num_portas;
  @override
  final String cor;
  @override
  final String nome_modelo;
  @override
  final double valor;

  @override
  String toString() {
    return 'Carro(id: $id, timestamp_cadastro: $timestamp_cadastro, modelo_id: $modelo_id, ano: $ano, combustivel: $combustivel, num_portas: $num_portas, cor: $cor, nome_modelo: $nome_modelo, valor: $valor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarroImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp_cadastro, timestamp_cadastro) ||
                other.timestamp_cadastro == timestamp_cadastro) &&
            (identical(other.modelo_id, modelo_id) ||
                other.modelo_id == modelo_id) &&
            (identical(other.ano, ano) || other.ano == ano) &&
            (identical(other.combustivel, combustivel) ||
                other.combustivel == combustivel) &&
            (identical(other.num_portas, num_portas) ||
                other.num_portas == num_portas) &&
            (identical(other.cor, cor) || other.cor == cor) &&
            (identical(other.nome_modelo, nome_modelo) ||
                other.nome_modelo == nome_modelo) &&
            (identical(other.valor, valor) || other.valor == valor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp_cadastro,
      modelo_id, ano, combustivel, num_portas, cor, nome_modelo, valor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarroImplCopyWith<_$CarroImpl> get copyWith =>
      __$$CarroImplCopyWithImpl<_$CarroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarroImplToJson(
      this,
    );
  }
}

abstract class _Carro extends Carro {
  factory _Carro(
      {required final int id,
      required final int timestamp_cadastro,
      required final int modelo_id,
      required final int ano,
      required final String combustivel,
      required final int num_portas,
      required final String cor,
      required final String nome_modelo,
      required final double valor}) = _$CarroImpl;
  _Carro._() : super._();

  factory _Carro.fromJson(Map<String, dynamic> json) = _$CarroImpl.fromJson;

  @override
  int get id;
  @override
  int get timestamp_cadastro;
  @override
  int get modelo_id;
  @override
  int get ano;
  @override
  String get combustivel;
  @override
  int get num_portas;
  @override
  String get cor;
  @override
  String get nome_modelo;
  @override
  double get valor;
  @override
  @JsonKey(ignore: true)
  _$$CarroImplCopyWith<_$CarroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
