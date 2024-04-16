import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_localizations/app/l10n/app_l10n.dart';

part 'app_l10n_state.dart';

class AppL10nCubit extends Cubit<AppL10nState> {
  AppL10nCubit() : super(const AppL10nState(AppL10n.enUS));

  void changeLocale(Locale locale) {
    emit(AppL10nState(locale));
  }
}
