import 'module_b_localizations.dart';

/// The translations for English (`en`).
class ModuleBLocalizationsEn extends ModuleBLocalizations {
  ModuleBLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to Module B!';

  @override
  String get description => 'Feel free to customize this module as you wish';
}
