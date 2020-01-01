# flutter_localization

Flutter Localization

## Cheatsheet

### Create resource bundles (.arb files)

In your Terminal and run the following command to create the arb files:

$ flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/locale/app_localization.dart


### Create the corresponding .dart

In your Terminal and run the following command :

$ flutter pub run intl_translation:generate_from_arb \
--output-dir=lib/l10n --no-use-deferred-loading \
lib/l10n/intl_messages.arb lib/l10n/intl_id.arb lib/l10n/intl_en.arb lib/locale/app_localization.dart

