import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';
import 'package:rummi_assistant/timer/presentation/widget/timer_segmented_control.dart';

class TimerSection extends ConsumerWidget {
  const TimerSection({
    required this.currentValue,
    required this.onValueChanged,
    this.isTimerSoundEnabled = true,
    this.onToggleTimerSoundEnabled,
    super.key,
  });

  final Duration currentValue;
  final bool isTimerSoundEnabled;
  final void Function(Duration) onValueChanged;
  final void Function()? onToggleTimerSoundEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Section(
      title: context.localizations.timerSectionTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimerSegmentedControl(
            currentValue: currentValue,
            onValueChanged: onValueChanged,
          ),
          context.geometry.spacingMedium.verticalBox,
          if (onToggleTimerSoundEnabled != null)
            _TimerSoundCheckBox(
              isEnabled: isTimerSoundEnabled,
              onToggleTimerSoundEnabled: onToggleTimerSoundEnabled!,
            ),
        ],
      ),
    );
  }
}

class _TimerSoundCheckBox extends ConsumerWidget {
  const _TimerSoundCheckBox({
    required this.isEnabled,
    required this.onToggleTimerSoundEnabled,
  });

  final bool isEnabled;
  final void Function() onToggleTimerSoundEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onToggleTimerSoundEnabled,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox.adaptive(
            value: isEnabled,
            onChanged: (_) => onToggleTimerSoundEnabled(),
            activeColor: context.colors.primary,
            checkColor: context.colors.onPrimary,
          ),
          BodyLarge(context.localizations.timerSectionSoundCheckBox),
        ],
      ),
    );
  }
}
