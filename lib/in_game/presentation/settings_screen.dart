import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/button/menu_button.dart';
import 'package:rummi_assistant/core/widget/separated_column.dart';
import 'package:rummi_assistant/in_game/presentation/controller/settings_controller.dart';
import 'package:rummi_assistant/in_game/presentation/widget/version_text.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      appBarTitle: 'Settings',
      excludePadding: true,
      body: SingleChildScrollView(
        padding: context.geometry.mediumPadding,
        child: Column(
          children: [
            AppButton.primary(
              text: 'Finish game',
              onPressed: () => ref.read(settingsControllerProvider.notifier).finishGame(),
            ),
            context.geometry.spacingLarge.verticalBox,
            const _PlayersSection(),
            context.geometry.spacingLarge.verticalBox,
            const _LegalSection(),
            context.geometry.spacingTripleExtraLarge.verticalBox,
            const VersionText(),
          ],
        ),
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
      title: 'Player names',
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
            text: 'Change player names',
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
      title: 'Legal',
      child: SeparatedColumn(
        spacing: context.geometry.spacingExtraSmall,
        children: const [
          MenuButton(routeName: "routeName", title: "Privacy Policy", icon: Icons.privacy_tip),
          MenuButton(
              routeName: "routeName", title: "Open source licenses", icon: Icons.library_books),
          MenuButton(routeName: "routeName", title: "Imprint", icon: Icons.local_library_rounded),
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
