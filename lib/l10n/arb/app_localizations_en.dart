// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Rummi Assistant';

  @override
  String get gameHistorySectionTitle => 'Game history';

  @override
  String get gameHistoryButton => 'See previous games';

  @override
  String get gameHistoryScreenTitle => 'Game history';

  @override
  String get gameHistoryItemPlayersSubtitle => 'Players:';

  @override
  String get gameHistoryItemWinnerSubtitle => 'Winner:';

  @override
  String get gameHistoryDetailTitle => 'Game score';

  @override
  String get gameHistoryEmptyText => 'No games played yet';

  @override
  String get playerSection => 'Players';

  @override
  String playerAmountSegment(Object amount) {
    return '$amount players';
  }

  @override
  String get playerNamesModalTitle => 'Edit player names';

  @override
  String playerNamesModalSectionTitle(Object playerNumber) {
    return 'Name for Player $playerNumber';
  }

  @override
  String get playerNamesModalButton => 'Change names';

  @override
  String get playerNamesModalErrorMissingName =>
      'Please enter a name for all players';

  @override
  String get playerNamesModalErrorDuplicateName =>
      'Please enter unique names for all players';

  @override
  String get newGameContinueButton => 'Continue';

  @override
  String get newGameCardStartGame => 'New game';

  @override
  String get newGameConfigurationFinishedButton => 'Start game';

  @override
  String get newGamePlayerAmountStepTitle => 'Select number of players';

  @override
  String get newGamePlayerNamesStepTitle => 'Enter player names';

  @override
  String get newGameTimerStepTitle => 'Set timer duration';

  @override
  String defaultPlayerName(Object playerNumber) {
    return 'Player $playerNumber';
  }

  @override
  String get scoreScreenAddScoreButton => 'Add score';

  @override
  String get scoreInputModalButtonStep => 'Submit score';

  @override
  String get scoreInputModalTitle => 'Enter scores for players';

  @override
  String get scoreInputModalSelectWinnerTitle => 'Select the round winner';

  @override
  String get settingsTitle => 'Settings';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Appversion: $version ($build)';
  }

  @override
  String get settingsOpenSourceLicenses => 'Open source licenses';

  @override
  String get settingsFinishGameButton => 'Finish game';

  @override
  String get settingsPrivacyPolicy => 'Privacy policy';

  @override
  String get settingsTermsOfService => 'Terms of service';

  @override
  String get settingsPlayerSectionTitle => 'Player names';

  @override
  String get settingsPlayerSectionChangeNamesButton => 'Change player names';

  @override
  String get settingsLegalSectionTitle => 'Legal';

  @override
  String get tabBarTimer => 'Timer';

  @override
  String get tabBarScore => 'Score';

  @override
  String get tabBarSettings => 'Settings';

  @override
  String get timerCustomSegment => 'Custom';

  @override
  String get timerSectionTitle => 'Timer';

  @override
  String get timerSectionSoundCheckBox => 'Timer sound 🔈';

  @override
  String get timerSelectionModalTitle => 'Select timer duration in seconds';

  @override
  String get timerSelectionModalTextFieldPlaceHolder => 'Timer duration';

  @override
  String get timerSelectionModalButton => 'Set timer';

  @override
  String get urlPrivacyPolicy =>
      'https://www.maxschubert.dev/rummi-assistant/privacy-policy';

  @override
  String get urlTermsOfService =>
      'https://www.maxschubert.dev/rummi-assistant/tos';
}
