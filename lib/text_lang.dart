import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextLang extends StatelessWidget {
  TextLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale);
    return Text(AppLocalizations.of(context)?.helloWorld ?? "no text");
  }
}
