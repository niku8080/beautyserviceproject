import 'package:homepagefemale/model/product_model.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DBHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    final path = await getDatabasesPath();
    return openDatabase(
      join(path, 'favorites.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE favorites(name TEXT, description TEXT, imagePath TEXT, price INTEGER)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertFavorite(Product product) async {
    final db = await database;
    await db.insert(
      'favorites',
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Product>> getFavorites() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('favorites');
    return List.generate(maps.length, (i) => Product.fromMap(maps[i]));
  }

  Future<void> clearFavorites() async {
    final db = await database;
    await db.delete('favorites');
  }

  deleteFavorite(int id) {
    
  }

  getCartItems() {}
}
