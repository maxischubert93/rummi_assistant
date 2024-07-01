import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/button/menu_button.dart';
import 'package:rummi_assistant/core/widget/separated_column.dart';
import 'package:rummi_assistant/l10n/l10n.dart';
import 'package:rummi_assistant/settings/presentation/controller/settings_controller.dart';
import 'package:rummi_assistant/settings/presentation/widget/version_text.dart';
import 'package:rummi_assistant/timer/presentation/widget/timer_segmented_control.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      appBarTitle: context.localizations.settingsTitle,
      excludePadding: true,
      hideBackButton: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: context.geometry.mediumPadding,
              child: Column(
                children: [
                  const _PlayersSection(),
                  context.geometry.spacingLarge.verticalBox,
                  const _TimerSection(),
                  context.geometry.spacingLarge.verticalBox,
                  const _LegalSection(),
                  context.geometry.spacingTripleExtraLarge.verticalBox,
                  const VersionText(),
                  context.geometry.spacingLarge.verticalBox,
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.geometry.spacingMedium,
              vertical: context.geometry.spacingMedium,
            ),
            color: context.colors.navigation,
            child: AppButton.primary(
              text: context.localizations.settingsFinishGameButton,
              onPressed: () => ref.read(settingsControllerProvider.notifier).finishGame(),
            ),
          ),
        ],
      ),
    );
  }
}

class _TimerSection extends ConsumerWidget {
  const _TimerSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerDuration =
        ref.watch(settingsControllerProvider.select((state) => state.timerDuration));

    return _SettingsSection(
      title: context.localizations.settingsTimerSectionTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimerSegmentedControl(
            currentValue: timerDuration,
            onValueChanged: (duration) =>
                ref.read(settingsControllerProvider.notifier).onTimerDurationChanged(duration),
          ),
          context.geometry.spacingMedium.verticalBox,
          const _TimerSoundCheckBox(),
        ],
      ),
    );
  }
}

class _TimerSoundCheckBox extends ConsumerWidget {
  const _TimerSoundCheckBox();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled =
        ref.watch(settingsControllerProvider.select((state) => state.isTimerSoundEnabled));

    return GestureDetector(
      onTap: () => ref.read(settingsControllerProvider.notifier).onToggleTimerSoundEnabled(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox.adaptive(
            value: isEnabled,
            onChanged: (_) =>
                ref.read(settingsControllerProvider.notifier).onToggleTimerSoundEnabled(),
            activeColor: context.colors.primary,
            checkColor: context.colors.onPrimary,
          ),
          BodyLarge(context.localizations.settingsTimerSectionSoundCheckBox),
        ],
      ),
    );
  }
}

class _PlayersSection extends ConsumerWidget {
  const _PlayersSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(settingsControllerProvider.select((state) => state.players));

    if (players.isEmpty) {
      return const SizedBox();
    }

    return _SettingsSection(
      title: context.localizations.settingsPlayerSectionTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SeparatedRow(
            children: [
              _PlayerLabel(playerName: players[0].name, index: 0),
              _PlayerLabel(playerName: players[1].name, index: 1),
            ],
          ),
          context.geometry.spacingSmall.verticalBox,
          if (players.length > 2)
            SeparatedRow(
              children: [
                _PlayerLabel(playerName: players[2].name, index: 2),
                if (players.length == 4)
                  _PlayerLabel(playerName: players[3].name, index: 3)
                else
                  const Spacer(),
              ],
            ),
          context.geometry.spacingLarge.verticalBox,
          AppButton.secondary(
            text: context.localizations.settingsPlayerSectionChangeNamesButton,
            onPressed: () => ref.read(settingsControllerProvider.notifier).changePlayerNames(),
          ),
        ],
      ),
    );
  }
}

class _PlayerLabel extends StatelessWidget {
  const _PlayerLabel({
    required this.playerName,
    required this.index,
  });

  final String playerName;
  final int index;

  @override
  Widget build(BuildContext context) {
    final borderColors = [
      context.colors.primary,
      context.colors.secondary,
      context.colors.tertiary,
      context.colors.divider,
    ];

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.geometry.spacingMedium,
          vertical: context.geometry.spacingSmall,
        ),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: context.geometry.radiusMedium,
          border: Border.all(color: borderColors[index % borderColors.length]),
        ),
        child: BodyLarge(playerName),
      ),
    );
  }
}

class _LegalSection extends StatelessWidget {
  const _LegalSection();

  @override
  Widget build(BuildContext context) {
    return _SettingsSection(
      title: context.localizations.settingsLegalSectionTitle,
      child: SeparatedColumn(
        spacing: context.geometry.spacingExtraSmall,
        children: [
          const MenuButton(
            routeName: 'routeName',
            title: 'Privacy Policy',
            icon: Icons.privacy_tip,
          ),
          MenuButton(
            routeName: RouteNames.licenses,
            title: context.localizations.settingsOpenSourceLicenses,
            icon: Icons.library_books,
          ),
          const MenuButton(
            routeName: 'routeName',
            title: 'Imprint',
            icon: Icons.local_library_rounded,
          ),
        ],
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  const _SettingsSection({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle(title),
          context.geometry.spacingMedium.verticalBox,
          child,
        ],
      ),
    );
  }
}
