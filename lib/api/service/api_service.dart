import 'dart:convert';
import 'package:teste_mobile_simples/database/service/database_service.dart';
import '../../lead/models/lead.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<void> postLeads() async {
    final dbService = DatabaseService();
    final leads = await dbService.getLeads();

    for (Lead lead in leads) {
      var response = await http.post(
        Uri.parse('https://www.wswork.com.br/cars/leads'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(lead.toJson()),
      );

      if (response.statusCode == 200) {
        print('Lead posted successfully');
      } else if (response.statusCode == 301) {
        final newUrl = response.headers['location'];
        if (newUrl != null) {
          response = await http.post(
            Uri.parse(newUrl),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(lead.toJson()),
          );
          print(response);
        }
      } else {
        print('Failed to post lead: ${response.statusCode}');
      }
    }
  }
}
