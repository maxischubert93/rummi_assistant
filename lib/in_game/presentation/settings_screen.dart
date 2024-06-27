import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      appBarTitle: 'Settings',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _PlayersSection(),
            context.geometry.spacingLarge.verticalBox,
            AppButton.primary(
              text: 'Finish game',
              onPressed: () => ref.read(settingsControllerProvider.notifier).finishGame(),
            ),
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
    final colors = [
      context.colors.primaryLightest.withOpacity(0.6),
      context.colors.secondaryLightest.withOpacity(0.6),
      context.colors.tertiaryLightest.withOpacity(0.6),
      context.colors.divider.withOpacity(0.6),
    ];

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.geometry.spacingMedium,
          vertical: context.geometry.spacingSmall,
        ),
        decoration: BoxDecoration(
          color: colors[index % colors.length],
          borderRadius: context.geometry.radiusMedium,
        ),
        child: BodyLarge(playerName),
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
