import 'package:flutter/material.dart';
import 'package:flutter_modular_localizations/app/l10n/gen/app_localizations.dart';
import 'package:flutter_modular_localizations/app/widgets/language_dropdown.dart';
import 'package:module_a/view/module_a_view.dart';
import 'package:module_b/view/module_b_view.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _selectedIndex = 0;

  final _routes = [
    const ModuleAView(actions: LanguageDropdown()),
    const ModuleBView(actions: LanguageDropdown()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.one_k),
            label: AppLocalizations.of(context).navbarDestination1,
          ),
          NavigationDestination(
            icon: const Icon(Icons.two_k),
            label: AppLocalizations.of(context).navbarDestination2,
          ),
        ],
      ),
    );
  }
}
