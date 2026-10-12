import 'package:drift/drift.dart' show Value;
import 'package:outfity/data/database/app_database.dart';
import 'package:outfity/domain/models.dart';
import 'package:outfity/domain/repository.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl(this._db);

  final AppDatabase _db;

  @override
  Stream<List<Cloth>> watchClothes() {
    return _db.select(_db.clothes).watch().map(
          (rows) =>
          rows
              .map(
                (row) =>
                Cloth(
                  id: row.id,
                  title: row.title,
                  imagePath: row.imagePath,
                  categoryId: row.categoryId,
                  locationId: row.locationId,
                  comment: row.comment,
                ),
          )
              .toList(),
    );
  }

  @override
  Stream<List<Category>> watchCategories() {
    return _db.select(_db.categories).watch().map(
          (rows) =>
          rows
              .map((row) => Category(id: row.id, title: row.title))
              .toList(),
    );
  }

  @override
  Stream<List<Location>> watchLocations() {
    return _db.select(_db.locations).watch().map(
          (rows) =>
          rows
              .map((row) => Location(id: row.id, title: row.title))
              .toList(),
    );
  }

  @override
  Future<Cloth?> findClothById(int id) async {
    final row = await (_db.select(_db.clothes)
      ..where((table) => table.id.equals(id)))
        .getSingleOrNull();

    if (row == null) return null;

    return Cloth(
      id: row.id,
      title: row.title,
      imagePath: row.imagePath,
      categoryId: row.categoryId,
      locationId: row.locationId,
      comment: row.comment,
    );
  }

  @override
  Future<Category?> findCategoryById(int id) async {
    final row = await (_db.select(_db.categories)
      ..where((table) => table.id.equals(id)))
        .getSingleOrNull();

    if (row == null) return null;
    return Category(id: row.id, title: row.title);
  }

  @override
  Future<Location?> findLocationById(int id) async {
    final row = await (_db.select(_db.locations)
      ..where((table) => table.id.equals(id)))
        .getSingleOrNull();

    if (row == null) return null;
    return Location(id: row.id, title: row.title);
  }

  @override
  Future<Category> addCategory({required String title}) async {
    final id = await _db.into(_db.categories).insert(
      CategoriesCompanion.insert(title: title),
    );

    return Category(id: id, title: title);
  }

  @override
  Future<Location> addLocation({required String title}) async {
    final id = await _db.into(_db.locations).insert(
      LocationsCompanion.insert(title: title),
    );

    return Location(id: id, title: title);
  }

  @override
  Future<Cloth> addCloth({
    required String title,
    required String? imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  }) async {
    final id = await _db.into(_db.clothes).insert(
      ClothesCompanion.insert(
        title: title,
        imagePath: Value(imagePath),
        categoryId: Value(categoryId),
        locationId: Value(locationId),
        comment: comment,
      ),
    );

    return Cloth(
      id: id,
      title: title,
      imagePath: imagePath,
      categoryId: categoryId,
      locationId: locationId,
      comment: comment,
    );
  }

  @override
  Future<Cloth> updateCloth({
    required int id,
    required String title,
    required String? imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  }) async {
    final updated = await (_db.update(_db.clothes)
      ..where((table) => table.id.equals(id)))
        .write(
      ClothesCompanion(
        title: Value(title),
        imagePath: Value(imagePath),
        categoryId: Value(categoryId),
        locationId: Value(locationId),
        comment: Value(comment),
      ),
    );

    if (updated == 0) {
      throw StateError('Cloth $id not found');
    }

    return Cloth(
      id: id,
      title: title,
      imagePath: imagePath,
      categoryId: categoryId,
      locationId: locationId,
      comment: comment,
    );
  }

  @override
  Future<void> deleteCloth(int id) async {
    await (_db.delete(_db.clothes)
      ..where((table) => table.id.equals(id)))
        .go();
  }
}