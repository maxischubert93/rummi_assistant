import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/extension/duration.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class TimerSegmentedControl extends StatelessWidget {
  const TimerSegmentedControl({
    required this.currentValue,
    required this.onValueChanged,
    super.key,
  });

  final Duration currentValue;
  final void Function(Duration) onValueChanged;
  static const _defaultMinuteTimer = Duration(minutes: 1);
  static const _defaultTwoMinuteTimer = Duration(minutes: 2);

  @override
  Widget build(BuildContext context) {
    final String customSegmentText;
    if (currentValue == _defaultMinuteTimer || currentValue == _defaultTwoMinuteTimer) {
      customSegmentText = context.localizations.timerCustomSegment;
    } else {
      customSegmentText = currentValue.secondsText;
    }

    final isCustomSegmentSelected =
        currentValue != _defaultMinuteTimer && currentValue != _defaultTwoMinuteTimer;

    return SegmentedControl<Duration>(
      segments: {
        _defaultMinuteTimer: _defaultMinuteTimer.secondsText,
        _defaultTwoMinuteTimer: _defaultTwoMinuteTimer.secondsText,
      },
      currentValue: currentValue,
      onValueChanged: onValueChanged,
      customSegmentText: customSegmentText,
      onCustomSegmentPressed: () async {
        final customValue = await context.pushNamed<String?>(
          RouteNames.timerModal,
        );
        if (customValue != null) {
          onValueChanged(Duration(seconds: int.parse(customValue)));
        }
      },
      isCustomSegmentSelected: isCustomSegmentSelected,
    );
  }
}
