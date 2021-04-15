
import 'package:flutter_app/model/city.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseProvider {
  static const String TABLE_CITY = "city";
  static const String COLUMN_ID = "id";
  static const String COLUMN_NAME = "name";
  static const String COLUMN_description = "description";
  static const String COLUMN_STATE="state";
  static const String TABLE_HOTEL = "city";
  static const String COLUMN_ADDRESS = "ADDRESS";

 

  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();

  Database _database;

  Future<Database> get database async {
    print("database getter called");

    if (_database != null) {
      return _database;
    }

    _database = await createDatabase();

    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();

    return await openDatabase(
      join(dbPath, 'cityDB.db'),
      version: 1,
      onCreate: (Database database, int version) async {
        print("Creating city table");

        await database.execute(
          "CREATE TABLE $TABLE_CITY ("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_NAME TEXT,"
          "$COLUMN_description TEXT,"
          ")",
        );
      },
    );
  }

  Future<List<City>> getCitys() async {
    final db = await database;

    var citys = await db
        .query(TABLE_CITY, columns: [COLUMN_ID, COLUMN_NAME, COLUMN_description]);

    List<City> cityList = List<City>();

    citys.forEach((currentCity) {
      City city = City.fromMap(currentCity);

      cityList.add(city);
    });

    return cityList;
  }

  Future<City> insert(City city) async {
    final db = await database;
    city.id = await db.insert(TABLE_CITY, city.toMap());
    return city;
  }

  Future<int> delete(int id) async {
    final db = await database;

    return await db.delete(
      TABLE_CITY,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> update(City city) async {
    final db = await database;

    return await db.update(
      TABLE_CITY,
      city.toMap(),
      where: "id = ?",
      whereArgs: [city.id],
    );
  }
}