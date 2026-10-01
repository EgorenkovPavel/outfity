import 'models.dart';

class Interactor {

  static final _cloths = [
    Cloth(id: '1', title: 'TShort', categoryId: '1', locationId: '2', imagePath: '', comment: ''),
    Cloth(id: '2', title: 'TShort', categoryId: '0', locationId: '0', imagePath: '', comment: ''),
    Cloth(id: '3', title: 'TShort', categoryId: '0', locationId: '0', imagePath: '', comment: ''),
  ];

  static final _categories = [
    Category(id: '1', title: 'Category 1'),
    Category(id: '2', title: 'Category 2'),
  ];

  static final _locations = [
    Location(id: '1', title: 'Location 1'),
    Location(id: '2', title: 'Location 2'),
  ];

  static List<Cloth> get clothes => _cloths;

  static List<Category> get categories => _categories;

  static List<Location> get locations => _locations;

  static Cloth? findClothById(String id) => _cloths.where((e) => e.id == id).firstOrNull;

  static Category? findCategoryById(String id) => _categories.where((e) => e.id == id).firstOrNull;

  static Location? findLocationById(String id) => _locations.where((e) => e.id == id).firstOrNull;

}