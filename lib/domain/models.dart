class Cloth {
  final String id;
  final String title;
  final String imagePath;
  final String categoryId;
  final String locationId;
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
  final String id;
  final String title;

  Category({required this.id, required this.title});
}

class Location {
  final String id;
  final String title;

  Location({required this.id, required this.title});
}
