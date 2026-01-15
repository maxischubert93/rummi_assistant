import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/extension/date_time.dart';
import 'package:rummi_assistant/game/game.dart';
import 'package:rummi_assistant/game/presentation/controller/game_history_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class GameHistoryScreen extends ConsumerWidget {
  const GameHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameHistoryControllerProvider);

    return AppScaffold(
      appBarTitle: context.localizations.gameHistoryScreenTitle,
      excludePadding: true,
      body: switch (state.showEmptyState) {
        true => const _Empty(),
        false => const _GamesList(),
      },
    );
  }
}

class _GamesList extends ConsumerWidget {
  const _GamesList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameHistoryControllerProvider);

    return ListView.separated(
      separatorBuilder: (context, index) => context.geometry.spacingMedium.verticalBox,
      itemCount: state.games.length,
      padding: context.geometry.mediumPadding,
      itemBuilder: (context, index) {
        final game = state.games[index];
        return _GameListItem(
          game: game,
          onTap: () => ref.read(gameHistoryControllerProvider.notifier).onGameTap(game),
          colorIndex: index % 3,
        );
      },
    );
  }
}

class _GameListItem extends StatelessWidget {
  const _GameListItem({
    required this.game,
    required this.onTap,
    required this.colorIndex,
  });

  final Game game;
  final int colorIndex;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final colors = [
      context.colors.primaryLight,
      context.colors.secondaryLight,
      context.colors.tertiaryLight,
    ];

    return PlatformClickListener(
      onTap: onTap,
      border: RoundedRectangleBorder(
        borderRadius: context.geometry.radiusMedium,
      ),
      child: Surface(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.geometry.spacingMedium,
                vertical: context.geometry.spacingSmall,
              ),
              decoration: BoxDecoration(
                color: colors[colorIndex],
                borderRadius: BorderRadius.only(
                  topLeft: context.geometry.radiusMedium.topLeft,
                  topRight: context.geometry.radiusMedium.topRight,
                ),
              ),
              width: double.infinity,
              child: Subtitle(
                game.createdAt.dayMonthYearTime,
                color: context.colors.onPrimary,
                singleLine: false,
              ),
            ),
            Padding(
              padding: context.geometry.mediumPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleMedium(context.localizations.gameHistoryItemPlayersSubtitle),
                  context.geometry.spacingExtraSmall.verticalBox,
                  BodyLarge(game.players.map((player) => player.name).join(', ')),
                  context.geometry.spacingMedium.verticalBox,
                  TitleMedium(context.localizations.gameHistoryItemWinnerSubtitle),
                  context.geometry.spacingExtraSmall.verticalBox,
                  Container(
                    decoration: ShapeDecoration(
                      color: colors[colorIndex],
                      shape: const StadiumBorder(),
                    ),
                    padding: context.geometry.smallPadding,
                    child: BodyLarge(
                      textAlign: TextAlign.center,
                      game.winners?.map((player) => player.name).join(', ') ?? '-',
                      color: context.colors.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Subtitle(context.localizations.gameHistoryEmptyText),
    );
  }
}
