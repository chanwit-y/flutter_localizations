# flutter_localizations_demo

   [reference](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

## A new Flutter project.

Adding your own localized messages
Once the flutter_localizations package is added, use the following instructions to add localized text to your application

1. Add the intl package to the pubspec.yaml file:

```
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: ^0.17.0 # Add this line
```

2. Also, in the pubspec.yaml file, enable the generate flag. This is added to the section of the pubspec that is specific to Flutter, and usually comes later in the pubspec file.

```
# The following section is specific to Flutter.
flutter:
  generate: true # Add this line
```

3. Add a new yaml file to the root directory of the Flutter project called l10n.yaml with the following content:

```
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
```
This file configures the localization tool; in this example, the input files are located in ${FLUTTER_PROJECT}/lib/l10n, the app_en.arb file provides the template, and the generated localizations are placed in the app_localizations.dart file.

4. In ${FLUTTER_PROJECT}/lib/l10n, add the app_en.arb template file. For example:
```
{
    "helloWorld": "Hello World!",
    "@helloWorld": {
      "description": "The conventional newborn programmer greeting"
    }
}
```
5. Next, add an app_es.arb file in the same directory for Spanish translation of the same message:
```
{
    "helloWorld": "¡Hola Mundo!"
}
```
6. Now, run your app so that codegen takes place. You should see generated files in ${FLUTTER_PROJECT}/.dart_tool/flutter_gen/gen_l10n.
7. Add the import statement on app_localizations.dart and AppLocalizations.delegate in your call to the constructor for MaterialApp.
```
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
```
```
return const MaterialApp(
  title: 'Localizations Sample App',
  localizationsDelegates: [
    AppLocalizations.delegate, // Add this line
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en', ''), // English, no country code
    Locale('es', ''), // Spanish, no country code
  ],
  home: MyHomePage(),
);
```
8. Use AppLocalizations anywhere in your app. Here, the translated message is used in a Text widget.
```
Text(AppLocalizations.of(context)!.helloWorld);
```

<!-- ## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
