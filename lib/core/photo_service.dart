import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class PhotoService {
  static const _clothesDirectory = 'clothes';

  Future<File?> getFile(String? imagePath) async {
    if (imagePath == null || imagePath.isEmpty) {
      return null;
    }

    final file = await _getFile(imagePath);

    if (!await file.exists()) {
      return null;
    }

    return file;
  }

  Future<String> save(
      XFile photo, {
        required int clothId,
      }) async {
    final directory = await _getClothesDirectory();

    final extension = path.extension(photo.path);
    final fileName = '$clothId$extension';
    final destination = path.join(directory.path, fileName);

    final file = await File(photo.path).copy(destination);

    return path.join(_clothesDirectory, fileName);
  }

  Future<void> delete(String? imagePath) async {
    if (imagePath == null || imagePath.isEmpty) {
      return;
    }

    final file = await _getFile(imagePath);

    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<String> replace(
      XFile photo, {
        required int clothId,
        String? oldImagePath,
      }) async {
    final newImagePath = await save(
      photo,
      clothId: clothId,
    );

    if (oldImagePath != null && oldImagePath != newImagePath) {
      await delete(oldImagePath);
    }

    return newImagePath;
  }

  Future<Directory> _getClothesDirectory() async {
    final appDirectory = await getApplicationDocumentsDirectory();

    final directory = Directory(
      path.join(appDirectory.path, _clothesDirectory),
    );

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }

  Future<File> _getFile(String imagePath) async {
    final appDirectory = await getApplicationDocumentsDirectory();

    return File(
      path.join(appDirectory.path, imagePath),
    );
  }
}