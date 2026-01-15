import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Rummi Assistant'**
  String get appName;

  /// No description provided for @gameHistorySectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Game history'**
  String get gameHistorySectionTitle;

  /// No description provided for @gameHistoryButton.
  ///
  /// In en, this message translates to:
  /// **'See previous games'**
  String get gameHistoryButton;

  /// No description provided for @gameHistoryScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Game history'**
  String get gameHistoryScreenTitle;

  /// No description provided for @gameHistoryItemPlayersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Players:'**
  String get gameHistoryItemPlayersSubtitle;

  /// No description provided for @gameHistoryItemWinnerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Winner:'**
  String get gameHistoryItemWinnerSubtitle;

  /// No description provided for @gameHistoryDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Game score'**
  String get gameHistoryDetailTitle;

  /// No description provided for @gameHistoryEmptyText.
  ///
  /// In en, this message translates to:
  /// **'No games played yet'**
  String get gameHistoryEmptyText;

  /// No description provided for @homeStartGameButton.
  ///
  /// In en, this message translates to:
  /// **'Start game'**
  String get homeStartGameButton;

  /// No description provided for @homePlayerSection.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get homePlayerSection;

  /// No description provided for @homePlayerAmountSegment.
  ///
  /// In en, this message translates to:
  /// **'{amount} players'**
  String homePlayerAmountSegment(Object amount);

  /// No description provided for @homePlayerSectionChangeNamesButton.
  ///
  /// In en, this message translates to:
  /// **'Change player names'**
  String get homePlayerSectionChangeNamesButton;

  /// No description provided for @playerNamesModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit player names'**
  String get playerNamesModalTitle;

  /// No description provided for @playerNamesModalSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Name for Player {playerNumber}'**
  String playerNamesModalSectionTitle(Object playerNumber);

  /// No description provided for @playerNamesModalButton.
  ///
  /// In en, this message translates to:
  /// **'Change names'**
  String get playerNamesModalButton;

  /// No description provided for @playerNamesModalErrorMissingName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name for all players'**
  String get playerNamesModalErrorMissingName;

  /// No description provided for @playerNamesModalErrorDuplicateName.
  ///
  /// In en, this message translates to:
  /// **'Please enter unique names for all players'**
  String get playerNamesModalErrorDuplicateName;

  /// No description provided for @defaultPlayerName.
  ///
  /// In en, this message translates to:
  /// **'Player {playerNumber}'**
  String defaultPlayerName(Object playerNumber);

  /// No description provided for @scoreScreenAddScoreButton.
  ///
  /// In en, this message translates to:
  /// **'Add score'**
  String get scoreScreenAddScoreButton;

  /// No description provided for @scoreInputModalButtonStep.
  ///
  /// In en, this message translates to:
  /// **'Submit score'**
  String get scoreInputModalButtonStep;

  /// No description provided for @scoreInputModalButtonFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get scoreInputModalButtonFinish;

  /// No description provided for @scoreInputModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter score for {playerName}'**
  String scoreInputModalTitle(Object playerName);

  /// No description provided for @scoreInputModalSelectWinnerTitle.
  ///
  /// In en, this message translates to:
  /// **'Select the round winner'**
  String get scoreInputModalSelectWinnerTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsAppVersion.
  ///
  /// In en, this message translates to:
  /// **'Appversion: {version} ({build})'**
  String settingsAppVersion(Object build, Object version);

  /// No description provided for @settingsOpenSourceLicenses.
  ///
  /// In en, this message translates to:
  /// **'Open source licenses'**
  String get settingsOpenSourceLicenses;

  /// No description provided for @settingsFinishGameButton.
  ///
  /// In en, this message translates to:
  /// **'Finish game'**
  String get settingsFinishGameButton;

  /// No description provided for @settingsPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get settingsPrivacyPolicy;

  /// No description provided for @settingsTermsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get settingsTermsOfService;

  /// No description provided for @settingsPlayerSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Player names'**
  String get settingsPlayerSectionTitle;

  /// No description provided for @settingsPlayerSectionChangeNamesButton.
  ///
  /// In en, this message translates to:
  /// **'Change player names'**
  String get settingsPlayerSectionChangeNamesButton;

  /// No description provided for @settingsLegalSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get settingsLegalSectionTitle;

  /// No description provided for @tabBarTimer.
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get tabBarTimer;

  /// No description provided for @tabBarScore.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get tabBarScore;

  /// No description provided for @tabBarSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabBarSettings;

  /// No description provided for @timerCustomSegment.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get timerCustomSegment;

  /// No description provided for @timerSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get timerSectionTitle;

  /// No description provided for @timerSectionSoundCheckBox.
  ///
  /// In en, this message translates to:
  /// **'Timer sound 🔈'**
  String get timerSectionSoundCheckBox;

  /// No description provided for @timerSelectionModalTitle.
  ///
  /// In en, this message translates to:
  /// **'Select timer duration in seconds'**
  String get timerSelectionModalTitle;

  /// No description provided for @timerSelectionModalTextFieldPlaceHolder.
  ///
  /// In en, this message translates to:
  /// **'Timer duration'**
  String get timerSelectionModalTextFieldPlaceHolder;

  /// No description provided for @timerSelectionModalButton.
  ///
  /// In en, this message translates to:
  /// **'Set timer'**
  String get timerSelectionModalButton;

  /// No description provided for @urlPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'https://www.maxschubert.dev/rummi-assistant/privacy-policy'**
  String get urlPrivacyPolicy;

  /// No description provided for @urlTermsOfService.
  ///
  /// In en, this message translates to:
  /// **'https://www.maxschubert.dev/rummi-assistant/tos'**
  String get urlTermsOfService;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
