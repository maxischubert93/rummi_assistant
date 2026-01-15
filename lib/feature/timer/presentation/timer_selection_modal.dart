import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/presentation/widget/number_text_field.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

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
        Subtitle(context.localizations.timerSelectionModalTitle),
        context.geometry.spacingLarge.verticalBox,
        NumberTextField(
          onChanged: (value) => _timerDuration = value,
          onSubmitted: (value) => context.pop<String?>(value),
          placeHolder: context.localizations.timerSelectionModalTextFieldPlaceHolder,
          maxLength: 3,
        ),
        context.geometry.spacingLarge.verticalBox,
        AppButton.secondary(
          text: context.localizations.timerSelectionModalButton,
          onPressed: () => context.pop<String?>(_timerDuration),
        ),
        context.geometry.spacingMedium.verticalBox,
      ],
    );
  }
}
