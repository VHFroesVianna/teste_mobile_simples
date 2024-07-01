import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:teste_mobile_simples/database/service/database_service.dart';

@GenerateMocks([http.Client, DatabaseService])
void main() {}
