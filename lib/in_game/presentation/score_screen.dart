import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/score_controller.dart';

const double _cellHeight = 50;

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      excludePadding: true,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            _NameRow(),
            Expanded(
              child: SingleChildScrollView(
                child: _ScoreTable(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScoreTable extends ConsumerWidget {
  const _ScoreTable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scoreControllerProvider);
    return Table(
      border: TableBorder.all(),
      children: List.generate(
        20,
        (index) => TableRow(
          children: state.players.map((player) {
            return _ScoreCell(score: null, isInEvenRow: index.isEven);
          }).toList(),
        ),
      ),
    );
  }
}

class _NameRow extends ConsumerWidget {
  const _NameRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerNames =
        ref.watch(scoreControllerProvider).players.map((player) => player.name).toList();

    final paddingTop = MediaQuery.of(context).padding.top;

    return Row(
      children: playerNames
          .map(
            (playerName) => Expanded(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                height: _cellHeight + paddingTop,
                alignment: Alignment.center,
                color: context.colors.navigation,
                child: Subtitle(playerName, textAlign: TextAlign.center),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _ScoreCell extends StatelessWidget {
  const _ScoreCell({required this.score, required this.isInEvenRow});

  final int? score;
  final bool isInEvenRow;

  @override
  Widget build(BuildContext context) {
    final color = isInEvenRow ? context.colors.tertiaryLightest : context.colors.secondaryLightest;

    return Container(
      height: _cellHeight,
      alignment: Alignment.center,
      color: color,
      child: score != null ? BodyLarge(score!.toString(), textAlign: TextAlign.center) : null,
    );
  }
}
