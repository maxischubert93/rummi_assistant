import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/score_controller.dart';

const double _cellHeight = 50;

class ScoreScreen extends ConsumerWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = ref.watch(scoreControllerProvider.select((state) => state.players.isEmpty))
        ? const Center(child: CircularProgressIndicator())
        : const _Content();

    return AppScaffold(
      excludePadding: true,
      body: SafeArea(
        top: false,
        child: content,
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _NameRow(),
        Expanded(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: _ScoreTable(),
          ),
        ),
        _TotalScoreRow(),
      ],
    );
  }
}

class _ScoreTable extends ConsumerWidget {
  const _ScoreTable();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scoreControllerProvider);

    return Table(
        border: TableBorder(
          horizontalInside: BorderSide(color: context.colors.divider),
          verticalInside: BorderSide(color: context.colors.divider),
        ),
        children: [
          for (var i = 0; i < state.maxScoreRowCount; i++)
            TableRow(
              children: state.players
                  .map(
                    (player) => _ScoreCell(
                      score: player.scores.elementAtOrNull(i),
                      isInEvenRow: i.isEven,
                    ),
                  )
                  .toList(),
            ),
          TableRow(
            children: [
              Padding(
                padding: context.geometry.mediumPadding,
                child: AppButton.primary(
                  text: 'Add score',
                  onPressed: () => ref.read(scoreControllerProvider.notifier).addScore(),
                ),
              ),
            ],
          ),
        ]);
  }
}

class _NameRow extends ConsumerWidget {
  const _NameRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerNames =
        ref.watch(scoreControllerProvider).players.map((player) => player.name).toList();

    final paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      alignment: Alignment.bottomCenter,
      height: _cellHeight + paddingTop,
      color: context.colors.navigation,
      child: SeparatedRow(
        crossAxisAlignment: CrossAxisAlignment.end,
        customSeparator: const VerticalSeparator(height: _cellHeight),
        children: playerNames
            .map(
              (playerName) => Expanded(
                child: Container(
                  height: _cellHeight,
                  alignment: Alignment.center,
                  child: Subtitle(playerName, textAlign: TextAlign.center),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _TotalScoreRow extends ConsumerWidget {
  const _TotalScoreRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalScores =
        ref.watch(scoreControllerProvider.select((state) => state.totalPlayerScores));

    return SeparatedRow(
      customSeparator: const VerticalSeparator(height: _cellHeight),
      children: totalScores
          .map(
            (score) => Expanded(
              child: Container(
                height: _cellHeight,
                alignment: Alignment.center,
                color: context.colors.secondaryLightest,
                child: Subtitle(score.totalScore.toString(), textAlign: TextAlign.center),
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
    final color = isInEvenRow ? context.colors.tertiaryLightest : context.colors.background;

    return Container(
      height: _cellHeight,
      alignment: Alignment.center,
      color: color,
      child: score != null ? BodyLarge(score!.toString(), textAlign: TextAlign.center) : null,
    );
  }
}
