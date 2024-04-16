import 'module_a_localizations.dart';

/// The translations for Turkish (`tr`).
class ModuleALocalizationsTr extends ModuleALocalizations {
  ModuleALocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcome => 'Modül A\'ya Hoş Geldiniz!';

  @override
  String get description => 'Bu modül Flutter\'da modüler çevirileri nasıl uygulayacağınızı gösteren bir örnektir.';
}
