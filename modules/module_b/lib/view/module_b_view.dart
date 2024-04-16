import 'package:flutter/material.dart';
import 'package:module_b/l10n/gen/module_b_localizations.dart';

class ModuleBView extends StatelessWidget {
  const ModuleBView({required this.actions, super.key});

  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [actions],
        title: Text(ModuleBLocalizations.of(context).welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            ModuleBLocalizations.of(context).description,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
