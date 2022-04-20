# flutter_localizations_demo

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

3.Add a new yaml file to the root directory of the Flutter project called l10n.yaml with the following content:

```
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
```

<!-- ## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->
