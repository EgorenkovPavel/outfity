import 'models.dart';

abstract interface class Repository {
  Stream<List<Cloth>> watchClothes();

  Stream<List<Category>> watchCategories();

  Stream<List<Location>> watchLocations();

  Future<Cloth?> findClothById(int id);

  Future<Category?> findCategoryById(int id);

  Future<Location?> findLocationById(int id);

  Future<Category> saveCategory({required String title});

  Future<Location> saveLocation({required String title});

  Future<Cloth> saveCloth({
    required String title,
    required String imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  });
}
