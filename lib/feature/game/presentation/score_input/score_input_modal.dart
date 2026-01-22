import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/presentation/widget/number_text_field.dart';
import 'package:rummi_assistant/feature/game/presentation/score_input/score_input_controller.dart';
import 'package:rummi_assistant/feature/game/presentation/score_input/score_input_state.dart';
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
    final playerCount = ref.watch(
      scoreInputControllerProvider.select((state) => state.playerCount),
    );

    return SizedBox(
      height: 300,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: playerCount,
        itemBuilder: (_, index) => switch (index == 0) {
          true => _WinnerInputPage(onNext: _pageController.next),
          false => _ScoreInputPage(onBack: _pageController.previous),
        },
      ),
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
    final controller = ref.read(scoreInputControllerProvider.notifier);

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
            controller.onWinnerSelected(index: index);
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
    required this.onBack,
  });

  final void Function() onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(scoreInputControllerProvider);
    final controller = ref.read(scoreInputControllerProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _PageViewBackButton(onPressed: onBack),
            Expanded(
              child: Center(
                child: HeadlineSmall(
                  context.localizations.scoreInputModalTitle,
                  singleLine: false,
                ),
              ),
            ),
            Visibility.maintain(
              visible: false,
              child: _PageViewBackButton(onPressed: onBack),
            ),
          ],
        ),
        context.geometry.spacingExtraLarge.verticalBox,
        Row(
          children: state.losingPlayerScores
              .map(
                (score) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.geometry.spacingSmall,
                    ),
                    child: _PlayerScoreInput(score: score),
                  ),
                ),
              )
              .toList(),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(context.geometry.spacingMedium),
          child: AppButton.primary(
            text: context.localizations.scoreInputModalButtonStep,
            isEnabled: state.isSubmitEnabled,
            onPressed: controller.submitScore,
          ),
        ),
      ],
    );
  }
}

class _PlayerScoreInput extends ConsumerWidget {
  const _PlayerScoreInput({required this.score});

  final PlayerRoundScore score;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(scoreInputControllerProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Subtitle(score.playerName),
        context.geometry.spacingSmall.verticalBox,
        NumberTextField(
          key: ValueKey(score.playerName),
          focusNode: score.focusNode,
          maxLength: 4,
          onChanged: (value) => controller.onScoreChanged(
            playerName: score.playerName,
            points: value,
          ),
          onSubmitted: (value) => controller.onScoreSubmitted(
            playerName: score.playerName,
            points: value,
          ),
        ),
      ],
    );
  }
}

class _PageViewBackButton extends StatelessWidget {
  const _PageViewBackButton({
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return PlatformClickListener(
      onTap: onPressed,
      highlightColor: context.colors.primary,
      child: Container(
        width: 56,
        padding: EdgeInsets.symmetric(horizontal: context.geometry.spacingSmall),
        child: Icon(
          Icons.chevron_left,
          size: 40,
          color: context.colors.primary,
        ),
      ),
    );
  }
}

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
