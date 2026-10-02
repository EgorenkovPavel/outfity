import 'dart:async';

import 'package:outfity/domain/repository.dart';

import '../domain/models.dart';

class RepositoryImpl implements Repository {
  final _clothController = StreamController<List<Cloth>>.broadcast();
  final _categoryController = StreamController<List<Category>>.broadcast();
  final _locationController = StreamController<List<Location>>.broadcast();

  final _cloths = [
    Cloth(
      id: 1,
      title: 'TShort',
      categoryId: 1,
      locationId: 2,
      imagePath: '',
      comment: '',
    ),
    Cloth(
      id: 2,
      title: 'TShort',
      categoryId: null,
      locationId: null,
      imagePath: '',
      comment: '',
    ),
    Cloth(
      id: 3,
      title: 'TShort',
      categoryId: null,
      locationId: null,
      imagePath: '',
      comment: '',
    ),
  ];

  final _categories = [
    Category(id: 1, title: 'Category 1'),
    Category(id: 2, title: 'Category 2'),
  ];

  final _locations = [
    Location(id: 1, title: 'Location 1'),
    Location(id: 2, title: 'Location 2'),
  ];

  @override
  Future<Category?> findCategoryById(int id) async {
    return _categories.where((e) => e.id == id).firstOrNull;
  }

  @override
  Future<Cloth?> findClothById(int id) async {
    return _cloths.where((e) => e.id == id).firstOrNull;
  }

  @override
  Future<Location?> findLocationById(int id) async {
    return _locations.where((e) => e.id == id).firstOrNull;
  }

  @override
  Future<Category> saveCategory({required String title}) async {
    final category = Category(id: 47, title: title);
    _categories.add(category);

    _categoryController.add(List.unmodifiable(_categories));

    return category;
  }

  @override
  Future<Cloth> saveCloth({
    required String title,
    required String imagePath,
    required int? categoryId,
    required int? locationId,
    required String comment,
  }) async {
    final cloth = Cloth(
      id: 47,
      title: title,
      imagePath: imagePath,
      categoryId: categoryId,
      locationId: locationId,
      comment: comment,
    );

    _cloths.add(cloth);

    _clothController.add(List.unmodifiable(_cloths));

    return cloth;
  }

  @override
  Future<Location> saveLocation({required String title}) async {
    final location = Location(id: 47, title: title);
    _locations.add(location);

    _locationController.add(List.unmodifiable(_locations));

    return location;
  }

  @override
  Stream<List<Category>> watchCategories() async* {
    yield List.unmodifiable(_categories);

    yield* _categoryController.stream;
  }

  @override
  Stream<List<Cloth>> watchClothes() async* {
    yield List.unmodifiable(_cloths);

    yield* _clothController.stream;
  }

  @override
  Stream<List<Location>> watchLocations() async* {
    yield List.unmodifiable(_locations);

    yield* _locationController.stream;
  }
}
