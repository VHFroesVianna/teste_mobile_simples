// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadImpl _$$LeadImplFromJson(Map<String, dynamic> json) => _$LeadImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      carro: Carro.fromJson(json['carro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeadImplToJson(_$LeadImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'carro': instance.carro,
    };
