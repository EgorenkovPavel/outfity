
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
abstract class Cloth with _$Cloth {
  const factory Cloth({
    required int id,
    required String title,
    String? imagePath,
    int? categoryId,
    int? locationId,
    required String comment,
  }) = _Cloth;
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String title,
  }) = _Category;
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    required int id,
    required String title,
  }) = _Location;
}