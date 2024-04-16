import 'module_a_localizations.dart';

/// The translations for English (`en`).
class ModuleALocalizationsEn extends ModuleALocalizations {
  ModuleALocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome to Module A!';

  @override
  String get description => 'This is a sample module demonstrating how to implement modular localizations in Flutter.';
}
