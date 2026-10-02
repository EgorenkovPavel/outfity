class Cloth {
  final int id;
  final String title;
  final String imagePath;
  final int? categoryId;
  final int? locationId;
  final String comment;

  Cloth({
    required this.title,
    required this.id,
    required this.imagePath,
    required this.categoryId,
    required this.locationId,
    required this.comment,
  });
}

class Category {
  final int id;
  final String title;

  Category({required this.id, required this.title});
}

class Location {
  final int id;
  final String title;

  Location({required this.id, required this.title});
}
