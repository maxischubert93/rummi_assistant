import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/l10n/arb/app_localizations.dart';

export 'package:rummi_assistant/l10n/arb/app_localizations.dart';

extension AppLocalizationsViaBuildContextX on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}
