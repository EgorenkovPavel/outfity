// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Outfity';

  @override
  String get image_placeholder_hint => 'Нажмите чтобы выбрать фото';

  @override
  String get title => 'Название';

  @override
  String get category => 'Категория';

  @override
  String get location => 'Место';

  @override
  String get comment => 'Комментарий';

  @override
  String get delete_cloth_question_title => 'Удалить вещь?';

  @override
  String get delete_cloth_question =>
      'Вещь будет удалена из гардероба. Это действие нельзя отменить.';

  @override
  String get not_selected => 'Не выбрано';

  @override
  String get add => 'Добавить';

  @override
  String get delete => 'Удалить';

  @override
  String get delete_cloth => 'Удалить вещь';

  @override
  String get take_photo => 'Сделать фото';

  @override
  String get choose_from_gallery => 'Выбрать из галлереи';
}
