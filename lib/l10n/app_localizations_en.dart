// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Outfity';

  @override
  String get image_placeholder_hint => 'Tap to choose image';

  @override
  String get title => 'Title';

  @override
  String get category => 'Category';

  @override
  String get location => 'Location';

  @override
  String get comment => 'Comment';

  @override
  String get delete_cloth_question_title => 'Delete cloth?';

  @override
  String get delete_cloth_question =>
      'The item will be removed from the wardrobe. This action cannot be undone.';

  @override
  String get not_selected => 'Not selected';

  @override
  String get nothing_found => 'Nothing found';

  @override
  String get add => 'Add';

  @override
  String get delete => 'Delete';

  @override
  String get reset_filters => 'Reset filters';

  @override
  String get new_cloth => 'New cloth';

  @override
  String get edit_cloth => 'Edit cloth';

  @override
  String get delete_cloth => 'Delete cloth';

  @override
  String get take_photo => 'Take photo';

  @override
  String get choose_from_gallery => 'Choose from gallery';
}
