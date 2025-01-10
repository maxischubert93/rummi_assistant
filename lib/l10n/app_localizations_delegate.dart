import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    final localizations = lookupAppLocalizations(locale);
    final instance = GetIt.instance;
    if (instance.isRegistered<AppLocalizations>()) {
      instance.unregister<AppLocalizations>();
    }
    instance.registerSingleton(localizations);
    return SynchronousFuture<AppLocalizations>(localizations);
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
