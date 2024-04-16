import 'package:flutter/material.dart';
import 'package:module_a/l10n/gen/module_a_localizations.dart';

class ModuleAView extends StatelessWidget {
  const ModuleAView({required this.actions, super.key});

  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [actions],
        title: Text(ModuleALocalizations.of(context).welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            ModuleALocalizations.of(context).description,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
