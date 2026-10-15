import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

extension AppLocalization on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;

  MaterialLocalizations get materialLoc => MaterialLocalizations.of(this);
}