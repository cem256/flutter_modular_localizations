import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_localizations/app/l10n/app_l10n.dart';
import 'package:flutter_modular_localizations/app/l10n/cubit/app_l10n_cubit.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton<Locale>(
        value: context.watch<AppL10nCubit>().state.currentLocale,
        onChanged: (value) => context.read<AppL10nCubit>().changeLocale(value ?? AppL10n.enUS),
        items: AppL10n.supportedLocales
            .map(
              (locale) => DropdownMenuItem(
                value: locale,
                child: Text(locale.languageCode.toUpperCase()),
              ),
            )
            .toList(),
      ),
    );
  }
}
