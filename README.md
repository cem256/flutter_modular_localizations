# Flutter Modular Localizations
Demonstrates the implementation of independent localizations for each module in Flutter.

## Why Use Modular Localization?
When dealing with a codebase consisting of multiple modules (packages), it is common to have a single, large localization file that is used by both the modules and the main project. However, this approach increases the modules' dependency on the main project and reduces their reusability. For example, extracting a module to use in another project requires also transferring parts of the localization file.  A more effective strategy is to develop individual localization classes for each module, along with a shared localization class for commonly used terms in the app.

## How it Works?
Each module and the application have their own ".arb" and "l10n.yaml" files. The application's "AppLocalizations" class stores shared terms, while each module, such as 'ModuleA' has its own 'ModuleALocalizations' class for its specific localization needs.

## Generating Translations
To generate translations, navigate to the root of the project and execute the following script:

```sh
sh scripts/generate_translations.sh
```



