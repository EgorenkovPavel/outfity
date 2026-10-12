import 'package:drift/drift.dart';

@DataClassName('ClothRow')
class Clothes extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  // Храним относительный путь, а не само изображение.
  TextColumn get imagePath => text().nullable()();

  IntColumn get categoryId =>
      integer().nullable().references(
        Categories,
        #id,
        onDelete: KeyAction.setNull,
      )();

  IntColumn get locationId =>
      integer().nullable().references(
        Locations,
        #id,
        onDelete: KeyAction.setNull,
      )();

  TextColumn get comment => text()();
}

@DataClassName('CategoryRow')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();
}

@DataClassName('LocationRow')
class Locations extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();
}