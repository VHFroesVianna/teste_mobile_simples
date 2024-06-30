import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teste_mobile_simples/carro/models/carro/carro.dart';
import 'package:teste_mobile_simples/user/models/user.dart';

part 'lead.freezed.dart';
part 'lead.g.dart';

@freezed
class Lead with _$Lead {
  factory Lead({
    required final User user,
    required final Carro carro,
  }) = _Lead;

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);
}
