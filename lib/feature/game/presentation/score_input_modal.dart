import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/presentation/widget/number_text_field.dart';
import 'package:rummi_assistant/feature/game/presentation/controller/score_input_controller.dart';
import 'package:rummi_assistant/feature/game/presentation/widget/button_group.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class ScoreInputModal extends ConsumerWidget {
  const ScoreInputModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _PlayerInputPageView();
  }
}

class _PlayerInputPageView extends ConsumerStatefulWidget {
  const _PlayerInputPageView();

  @override
  ConsumerState<_PlayerInputPageView> createState() => _PlayerInputPageViewState();
}

class _PlayerInputPageViewState extends ConsumerState<_PlayerInputPageView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final playerCount =
        ref.watch(scoreInputControllerProvider.select((state) => state.playerCount));

    final nodes = ref.watch(
      scoreInputControllerProvider
          .select((state) => state.playerScores.map((score) => score.focusNode).toList()),
    );

    return SizedBox(
      height: 200,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: playerCount,
        itemBuilder: (context, index) {
          final isLast = index == playerCount - 1;

          return _PlayerInputPage(
            index: index,
            isLast: isLast,
            onPrevious: () {
              _pageController.previous();
              if (index == 1) {
                nodes[index].unfocus();
              } else if (index >= 2) {
                nodes[index - 1].requestFocus();
              }
            },
            onNext: () {
              _pageController.next();
              if (!isLast) {
                nodes[index + 1].requestFocus();
              }
            },
          );
        },
      ),
    );
  }
}

class _PlayerInputPage extends ConsumerWidget {
  const _PlayerInputPage({
    required this.index,
    required this.isLast,
    required this.onPrevious,
    required this.onNext,
  });

  final int index;
  final bool isLast;
  final void Function() onPrevious;
  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scoreInputControllerProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PageViewControl(
          isEnabled: index > 0,
          onPressed: onPrevious,
          position: PageViewControlPosition.leading,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.geometry.spacingMedium),
            child: switch (index == 0) {
              true => _WinnerInputPage(onNext: onNext),
              false => _ScoreInputPage(
                  index: index,
                  isLast: isLast,
                  onNext: () {
                    if (!isLast) onNext();
                  },
                ),
            },
          ),
        ),
        _PageViewControl(
          isEnabled: (index > 0 && !isLast && state.losingPlayerScores[index - 1].isScoreValid) ||
              (index == 0 && state.hasWinner),
          onPressed: onNext,
          position: PageViewControlPosition.trailing,
        ),
      ],
    );
  }
}

class _WinnerInputPage extends ConsumerWidget {
  const _WinnerInputPage({required this.onNext});

  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerScores = ref.watch(
      scoreInputControllerProvider.select((state) => state.playerScores),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Subtitle(
          context.localizations.scoreInputModalSelectWinnerTitle,
          singleLine: false,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        ButtonGroup(
          buttonTexts: playerScores.map((score) => score.playerName).toList(),
          selectedIndex: playerScores.indexWhere((score) => score.wonRound),
          onSelected: (index) {
            ref.read(scoreInputControllerProvider.notifier).onWinnerSelected(
                  index: index,
                );
            onNext();
          },
        ),
        const Spacer(),
      ],
    );
  }
}

class _ScoreInputPage extends ConsumerWidget {
  const _ScoreInputPage({
    required this.index,
    required this.onNext,
    required this.isLast,
  });

  final int index;
  final bool isLast;
  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      scoreInputControllerProvider.select((state) => state.losingPlayerScores[index - 1]),
    );

    ScoreInputController notifier() => ref.read(scoreInputControllerProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Subtitle(
          context.localizations.scoreInputModalTitle(state.playerName),
          singleLine: false,
        ),
        context.geometry.spacingLarge.verticalBox,
        NumberTextField(
          onChanged: (value) => notifier().onScoreChanged(
            playerName: state.playerName,
            points: value,
          ),
          onSubmitted: (value) {
            notifier().onScoreChanged(
              playerName: state.playerName,
              points: value,
            );
            onNext();
          },
          maxLength: 4,
          focusNode: state.focusNode,
        ),
        context.geometry.spacingSmall.verticalBox,
        Padding(
          padding: EdgeInsets.all(context.geometry.spacingMedium),
          child: AppButton.primary(
            text: isLast
                ? context.localizations.scoreInputModalButtonFinish
                : context.localizations.scoreInputModalButtonStep,
            isEnabled: state.isScoreValid,
            onPressed: () {
              if (isLast) {
                ref.read(scoreInputControllerProvider.notifier).submitScore();
              } else {
                onNext();
              }
            },
          ),
        ),
      ],
    );
  }
}

class _PageViewControl extends StatelessWidget {
  const _PageViewControl({
    required this.isEnabled,
    required this.onPressed,
    required this.position,
  });

  final bool isEnabled;
  final void Function() onPressed;
  final PageViewControlPosition position;

  @override
  Widget build(BuildContext context) {
    final icon = switch (position) {
      PageViewControlPosition.leading => Icons.chevron_left,
      PageViewControlPosition.trailing => Icons.chevron_right,
    };

    return PlatformClickListener(
      onTap: onPressed,
      enabled: isEnabled,
      highlightColor: context.colors.primary,
      child: Container(
        width: 56,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: context.geometry.spacingSmall),
        child: Icon(
          icon,
          size: 40,
          color: isEnabled ? context.colors.primary : context.colors.disabled,
        ),
      ),
    );
  }
}

enum PageViewControlPosition { leading, trailing }

extension NavigationAnimation on PageController {
  static const _duration = Duration(milliseconds: 300);
  static const _curve = Curves.easeInOut;

  void next() {
    nextPage(duration: _duration, curve: _curve);
  }

  void previous() {
    previousPage(duration: _duration, curve: _curve);
  }
}
