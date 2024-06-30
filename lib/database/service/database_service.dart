import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:teste_mobile_simples/carro/models/carro/carro.dart';
import 'package:teste_mobile_simples/lead/models/lead.dart';
import 'package:teste_mobile_simples/user/models/user.dart';

class DatabaseService {
  static Database? _database;

  DatabaseService();

  Future<Database> get getDatabase async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path =
        join(await getDatabasesPath(), 'teste_mobile_simples_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async => await _createTables(db),
    );
  }

  Future<void> _createTables(Database db) async {
    await db.execute(
      '''
        CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        email TEXT NOT NULL, 
        password TEXT NOT NULL
        )
        ''',
    );
    await db.execute('''
      CREATE TABLE carro(
        id INTEGER PRIMARY KEY,
        timestamp_cadastro INTEGER,
        modelo_id INTEGER,
        ano INTEGER,
        combustivel TEXT,
        num_portas INTEGER,
        cor TEXT,
        nome_modelo TEXT,
        valor REAL
      )
    ''');

    await db.execute('''
      CREATE TABLE lead(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        carro_id INTEGER,
        FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE,
        FOREIGN KEY (carro_id) REFERENCES carros (id) ON DELETE CASCADE
      )
    ''');
  }

  Future<int> insertUser(String email, String password) async {
    final db = await getDatabase;
    return await db.insert('user', {'email': email, 'password': password});
  }

  Future<List<User>> getUsers() async {
    final db = await getDatabase;
    final List<User> users = await db.query('user').then(
        (usersList) => usersList.map((user) => User.fromJson(user)).toList());
    return users;
  }

  Future<User> getUserById(int id) async => await getUsers()
      .then((usersList) => usersList.where((user) => user.id == id).first);

  Future<bool> carroExists(Carro carro) async {
    final db = await getDatabase;
    final result = await db.query(
      'carro',
      where:
          'modelo_id = ? AND ano = ? AND combustivel = ? AND num_portas = ? AND cor = ? AND nome_modelo = ? AND valor = ?',
      whereArgs: [
        carro.modelo_id,
        carro.ano,
        carro.combustivel,
        carro.num_portas,
        carro.cor,
        carro.nome_modelo,
        carro.valor
      ],
    );
    return result.isNotEmpty;
  }

  Future<int> insertCarro(Carro carro) async {
    if (!await carroExists(carro)) {
      final db = await getDatabase;
      return await db.insert('carro', carro.toJson());
    }
    return 0;
  }

  Future<List<Carro>> getCarros() async {
    final db = await getDatabase;
    final List<Carro> carros = await db.query('carro').then((carroList) =>
        carroList.map((carro) => Carro.fromJson(carro)).toList());
    return carros;
  }

  Future<Carro> getCarroById(int id) async => await getCarros()
      .then((carroList) => carroList.where((carro) => carro.id == id).first);

  Future<int> insertLead(int userId, int carroId) async {
    final db = await getDatabase;
    return await db.insert('lead', {'user_id': userId, 'carro_id': carroId});
  }

  Future<List<Lead>> getLeads() async {
    final db = await getDatabase;
    final queryLeads = await db.query('lead');

    List<Future<Lead>> leadFutures = queryLeads.map((lead) async {
      final user = await getUserById(lead['user_id'] as int);
      final carro = await getCarroById(lead['carro_id'] as int);

      return Lead(user: user, carro: carro);
    }).toList();

    return await Future.wait(leadFutures);
  }
}
