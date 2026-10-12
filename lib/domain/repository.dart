import 'models.dart';

abstract interface class Repository {
  Stream<List<Cloth>> watchClothes();

  Stream<List<Category>> watchCategories();

  Stream<List<Location>> watchLocations();

  Future<Cloth?> findClothById(int id);

  Future<Category?> findCategoryById(int id);

  Future<Location?> findLocationById(int id);

  Future<Category> addCategory({required String title});

  Future<Location> addLocation({required String title});

  Future<Cloth> addCloth({
    required String title,
    required String? imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  });

  Future<Cloth> updateCloth({
    required int id,
    required String title,
    required String? imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  });
}
