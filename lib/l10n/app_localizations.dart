import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In ru, this message translates to:
  /// **'Outfity'**
  String get appTitle;

  /// No description provided for @image_placeholder_hint.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите чтобы выбрать фото'**
  String get image_placeholder_hint;

  /// No description provided for @title.
  ///
  /// In ru, this message translates to:
  /// **'Название'**
  String get title;

  /// No description provided for @category.
  ///
  /// In ru, this message translates to:
  /// **'Категория'**
  String get category;

  /// No description provided for @location.
  ///
  /// In ru, this message translates to:
  /// **'Место'**
  String get location;

  /// No description provided for @comment.
  ///
  /// In ru, this message translates to:
  /// **'Комментарий'**
  String get comment;

  /// No description provided for @delete_cloth_question_title.
  ///
  /// In ru, this message translates to:
  /// **'Удалить вещь?'**
  String get delete_cloth_question_title;

  /// No description provided for @delete_cloth_question.
  ///
  /// In ru, this message translates to:
  /// **'Вещь будет удалена из гардероба. Это действие нельзя отменить.'**
  String get delete_cloth_question;

  /// No description provided for @not_selected.
  ///
  /// In ru, this message translates to:
  /// **'Не выбрано'**
  String get not_selected;

  /// No description provided for @nothing_found.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get nothing_found;

  /// No description provided for @add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get add;

  /// No description provided for @delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get delete;

  /// No description provided for @reset_filters.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить фильтры'**
  String get reset_filters;

  /// No description provided for @new_cloth.
  ///
  /// In ru, this message translates to:
  /// **'Новая вещь'**
  String get new_cloth;

  /// No description provided for @edit_cloth.
  ///
  /// In ru, this message translates to:
  /// **'Изменить вещь'**
  String get edit_cloth;

  /// No description provided for @delete_cloth.
  ///
  /// In ru, this message translates to:
  /// **'Удалить вещь'**
  String get delete_cloth;

  /// No description provided for @take_photo.
  ///
  /// In ru, this message translates to:
  /// **'Сделать фото'**
  String get take_photo;

  /// No description provided for @choose_from_gallery.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать из галлереи'**
  String get choose_from_gallery;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
