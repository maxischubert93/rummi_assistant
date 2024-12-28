import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/extension/date_time.dart';
import 'package:rummi_assistant/game/presentation/controller/game_history_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class GameHistoryScreen extends ConsumerWidget {
  const GameHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameHistoryControllerProvider);

    return AppScaffold(
      appBarTitle: context.localizations.gameHistoryScreenTitle,
      body: switch (state.showEmptyState) {
        true => const _Empty(),
        false => const _GamesTable(),
      },
    );
  }
}

class _GamesTable extends ConsumerWidget {
  const _GamesTable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameHistoryControllerProvider);

    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(color: context.colors.divider),
        verticalInside: BorderSide(color: context.colors.divider),
      ),
      children: [
        TableRow(
          children: [
            TableCell(child: Subtitle('Date')),
            TableCell(child: Subtitle('Players')),
            TableCell(child: Subtitle('Winner')),
          ],
        ),
        for (final game in state.games)
          TableRow(
            children: [
              TableCell(child: BodyLarge(game.createdAt.dayMonthYearTime)),
              TableCell(child: BodyLarge(game.players.map((player) => player.name).join(', '))),
              TableCell(
                child: BodyLarge(game.winners?.map((player) => player.name).join(', ') ?? '-'),
              ),
            ],
          ),
      ],
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Subtitle('No games yet'),
    );
  }
}
