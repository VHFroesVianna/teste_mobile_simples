import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:teste_mobile_simples/api/service/api_service.dart';
import 'package:teste_mobile_simples/carro/models/carro/carro.dart';
import 'package:teste_mobile_simples/lead/models/lead.dart';
import 'package:teste_mobile_simples/user/models/user.dart';

import 'mocks.mocks.dart';

void main() {
  group('ApiService', () {
    late MockDatabaseService mockDatabaseService;
    late MockClient mockClient;
    late ApiService apiService;

    setUp(() {
      mockDatabaseService = MockDatabaseService();
      mockClient = MockClient();
      apiService = ApiService();
    });

    test('postLeads should post leads successfully', () async {
      final lead = Lead(
        user: User(id: 1, email: 'test@example.com', password: 'password'),
        carro: Carro(
          id: 1,
          timestamp_cadastro: 123456,
          modelo_id: 1,
          ano: 2020,
          combustivel: 'Gasolina',
          num_portas: 4,
          cor: 'Preto',
          nome_modelo: 'Modelo Teste',
          valor: 50000.0,
        ),
      );
      final leads = [lead];

      when(mockDatabaseService.getLeads()).thenAnswer((_) async => leads);

      when(mockClient.post(
        Uri.parse('https://www.wswork.com.br/cars/leads'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response('{"status": "success"}', 200));

      await apiService.postLeads();

      verify(mockClient.post(
        Uri.parse('https://www.wswork.com.br/cars/leads'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(lead.toJson()),
      )).called(1);
    });

    test('postLeads should handle 301 redirect', () async {
      final lead = Lead(
        user: User(id: 1, email: 'test@example.com', password: 'password'),
        carro: Carro(
          id: 1,
          timestamp_cadastro: 123456,
          modelo_id: 1,
          ano: 2020,
          combustivel: 'Gasolina',
          num_portas: 4,
          cor: 'Preto',
          nome_modelo: 'Modelo Teste',
          valor: 50000.0,
        ),
      );
      final leads = [lead];

      when(mockDatabaseService.getLeads()).thenAnswer((_) async => leads);

      when(mockClient.post(
        Uri.parse('https://www.wswork.com.br/cars/leads'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response('', 301,
          headers: {'location': 'https://www.new-url.com/cars/leads'}));

      when(mockClient.post(
        Uri.parse('https://www.new-url.com/cars/leads'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response('{"status": "success"}', 200));

      await apiService.postLeads();

      verify(mockClient.post(
        Uri.parse('https://www.new-url.com/cars/leads'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(lead.toJson()),
      )).called(1);
    });
  });
}
