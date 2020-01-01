import 'package:flutter/material.dart';
import 'package:flutter_localization/l10n/messages_all.dart';
import 'package:intl/intl.dart';

class AppLocalization {
  static Future<AppLocalization> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  // list of locales
  String get heyWorld {
    return Intl.message(
      'Hey World',
      name: 'heyWorld',
      desc: 'Simpel word for greeting ',
    );
  }
  String get secondPage {
    return Intl.message(
      'Second Page',
      name: 'secondPage',
      desc: 'Simpel word for Second Page',
    );
  }
    String get homePage {
    return Intl.message(
      'Home Page',
      name: 'homePage',
      desc: 'Simpel word for Home Page',
    );
  }
}
