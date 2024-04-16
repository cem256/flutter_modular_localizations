import 'package:flutter/material.dart';
import 'package:flutter_modular_localizations/app/l10n/gen/app_localizations.dart';
import 'package:module_a/l10n/gen/module_a_localizations.dart';
import 'package:module_b/l10n/gen/module_b_localizations.dart';

final class AppL10n {
  AppL10n._();

  static const enUS = Locale('en', 'US');
  static const trTR = Locale('tr', 'TR');

  static const List<Locale> supportedLocales = [enUS, trTR];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    ...AppLocalizations.localizationsDelegates,
    // Add localization delegates of the each module here
    ...ModuleALocalizations.localizationsDelegates,
    ...ModuleBLocalizations.localizationsDelegates,
  ];
}
