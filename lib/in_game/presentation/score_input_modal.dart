import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/number_text_field.dart';
import 'package:rummi_assistant/in_game/presentation/controller/score_input_controller.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class ScoreInputModal extends ConsumerWidget {
  const ScoreInputModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _PlayerInputPageView(),
        context.geometry.spacingLarge.verticalBox,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.geometry.spacingMedium),
          child: AppButton.primary(
            text: context.localizations.scoreInputModalButton,
            isEnabled: ref.watch(
              scoreInputControllerProvider.select((state) => state.isSubmitEnabled),
            ),
            onPressed: () => ref.read(scoreInputControllerProvider.notifier).submitScore(),
          ),
        ),
      ],
    );
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

    return SizedBox(
      height: 200,
      child: PageView.builder(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        itemCount: playerCount,
        allowImplicitScrolling: true,
        itemBuilder: (context, index) {
          return _PlayerInputPage(
            index: index,
            isLast: index == playerCount - 1,
            onPrevious: _pageController.previous,
            onNext: _pageController.next,
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
    final state =
        ref.watch(scoreInputControllerProvider.select((state) => state.playerScores[index]));

    ScoreInputController notifier() => ref.read(scoreInputControllerProvider.notifier);

    return Row(
      children: [
        _PageViewControl(
          isEnabled: index > 0,
          onPressed: onPrevious,
          position: PageViewControlPosition.leading,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.geometry.spacingMedium),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Subtitle(
                  context.localizations.scoreInputModalTitle(state.playerName),
                  singleLine: false,
                ),
                context.geometry.spacingLarge.verticalBox,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PlatformSwitch(
                      value: state.wonRound,
                      onChanged: (value) => notifier().onWonRoundChanged(
                        index: index,
                        wonRound: value,
                      ),
                    ),
                    BodyLarge(context.localizations.scoreInputModalRoundWinnerSwitch),
                  ],
                ),
                context.geometry.spacingMedium.verticalBox,
                NumberTextField(
                  onChanged: (value) => notifier().onScoreChanged(
                    index: index,
                    points: value,
                  ),
                  enabled: !state.wonRound,
                  onSubmitted: (value) {
                    notifier().onScoreChanged(
                      index: index,
                      points: value,
                    );
                    if (!isLast) {
                      onNext();
                    }
                  },
                  maxLength: 4,
                ),
              ],
            ),
          ),
        ),
        _PageViewControl(
          isEnabled: !isLast,
          onPressed: onNext,
          position: PageViewControlPosition.trailing,
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
