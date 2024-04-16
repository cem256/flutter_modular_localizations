import 'module_b_localizations.dart';

/// The translations for Turkish (`tr`).
class ModuleBLocalizationsTr extends ModuleBLocalizations {
  ModuleBLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcome => 'Modül B\'ye Hoş Geldiniz!';

  @override
  String get description => 'Bu modülü istediğiniz gibi değiştirin.';
}
