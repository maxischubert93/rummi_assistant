// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Rummi Assistant';

  @override
  String get gameHistorySectionTitle => 'Spielverlauf';

  @override
  String get gameHistoryButton => 'Spielverlauf ansehen';

  @override
  String get gameHistoryScreenTitle => 'Spielverlauf';

  @override
  String get gameHistoryItemPlayersSubtitle => 'Spieler:';

  @override
  String get gameHistoryItemWinnerSubtitle => 'Sieger:';

  @override
  String get gameHistoryDetailTitle => 'Spielverlauf';

  @override
  String get gameHistoryEmptyText => 'Noch keine Spiele gespielt';

  @override
  String get playerSection => 'Spieler';

  @override
  String playerAmountSegment(Object amount) {
    return '$amount Spieler';
  }

  @override
  String get playerNamesModalTitle => 'Spielernamen ändern';

  @override
  String playerNamesModalSectionTitle(Object playerNumber) {
    return 'Name für Spieler $playerNumber';
  }

  @override
  String get playerNamesModalButton => 'Namen ändern';

  @override
  String get playerNamesModalErrorMissingName =>
      'Bitte gib für alle Spieler einen Namen ein';

  @override
  String get playerNamesModalErrorDuplicateName =>
      'Bitte gib für alle Spieler einen eindeutigen Namen ein';

  @override
  String get newGameContinueButton => 'Weiter';

  @override
  String get newGameCardStartGame => 'Neues Spiel';

  @override
  String get newGameConfigurationFinishedButton => 'Spiel starten';

  @override
  String get newGamePlayerAmountStepTitle => 'Wähle die Spieleranzahl';

  @override
  String get newGamePlayerNamesStepTitle => 'Gib die Spielernamen ein';

  @override
  String get newGameTimerStepTitle => 'Setze die Timer-Dauer';

  @override
  String defaultPlayerName(Object playerNumber) {
    return 'Spieler $playerNumber';
  }

  @override
  String get scoreScreenAddScoreButton => 'Punkte eintragen';

  @override
  String get scoreInputModalButtonStep => 'Punkte eintragen';

  @override
  String get scoreInputModalButtonFinish => 'Fertig';

  @override
  String scoreInputModalTitle(Object playerName) {
    return 'Punkte für $playerName';
  }

  @override
  String get scoreInputModalSelectWinnerTitle => 'Wer hat gewonnen?';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String settingsAppVersion(Object build, Object version) {
    return 'Appversion: $version ($build)';
  }

  @override
  String get settingsOpenSourceLicenses => 'Open Source Lizenzen';

  @override
  String get settingsFinishGameButton => 'Spiel beenden';

  @override
  String get settingsPrivacyPolicy => 'Datenschutzerklärung';

  @override
  String get settingsTermsOfService => 'Nutzungsbedingungen';

  @override
  String get settingsPlayerSectionTitle => 'Spielernamen';

  @override
  String get settingsPlayerSectionChangeNamesButton => 'Spielernamen ändern';

  @override
  String get settingsLegalSectionTitle => 'Rechtliches';

  @override
  String get tabBarTimer => 'Timer';

  @override
  String get tabBarScore => 'Punkte';

  @override
  String get tabBarSettings => 'Einstellungen';

  @override
  String get timerCustomSegment => 'Wähle Zeit';

  @override
  String get timerSectionTitle => 'Timer';

  @override
  String get timerSectionSoundCheckBox => 'Timer-Sound 🔈';

  @override
  String get timerSelectionModalTitle => 'Dauer des Timers in Sekunden wählen';

  @override
  String get timerSelectionModalTextFieldPlaceHolder => 'Timer-Dauer';

  @override
  String get timerSelectionModalButton => 'Bestätigen';

  @override
  String get urlPrivacyPolicy =>
      'https://www.maxschubert.dev/rummi-assistant/privacy-policy';

  @override
  String get urlTermsOfService =>
      'https://www.maxschubert.dev/rummi-assistant/tos';
}
