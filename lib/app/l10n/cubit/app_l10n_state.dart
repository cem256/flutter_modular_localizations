part of 'app_l10n_cubit.dart';

final class AppL10nState extends Equatable {
  const AppL10nState(this.currentLocale);

  final Locale currentLocale;

  @override
  List<Object> get props => [currentLocale];
}
