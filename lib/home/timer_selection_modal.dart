import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';

class TimerSelectionModal extends StatefulWidget {
  const TimerSelectionModal({super.key});

  @override
  State<TimerSelectionModal> createState() => _TimerSelectionModalState();
}

class _TimerSelectionModalState extends State<TimerSelectionModal> {
  String? _timerDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Subtitle('Select timer duration in seconds'),
        context.geometry.spacingLarge.verticalBox,
        SizedBox(
          width: 80,
          height: 50,
          child: CupertinoTextField(
            onChanged: (value) => _timerDuration = value,
            onSubmitted: (value) => context.pop<String?>(value),
            maxLength: 3,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: context.typography.bodyLarge,
            cursorColor: context.colors.secondary,
            textInputAction: TextInputAction.done,
            placeholder: 'Timer duration',
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colors.divider,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        context.geometry.spacingLarge.verticalBox,
        AppButton.secondary(
          text: 'Set timer',
          onPressed: () => context.pop<String?>(_timerDuration),
        ),
        context.geometry.spacingMedium.verticalBox,
      ],
    );
  }
}
