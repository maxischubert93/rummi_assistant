import 'package:flutter/cupertino.dart';
import 'package:rummi_assistant/core/core.dart';

class NumberTextField extends StatelessWidget {
  const NumberTextField({
    required this.onChanged,
    required this.onSubmitted,
    required this.maxLength,
    this.enabled = true,
    this.placeHolder,
    super.key,
  });

  final void Function(String) onChanged;
  final void Function(String) onSubmitted;
  final int maxLength;
  final bool enabled;
  final String? placeHolder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 50,
      child: CupertinoTextField(
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        maxLength: 3,
        padding: const EdgeInsets.all(12),
        keyboardType: TextInputType.number,
        enabled: enabled,
        textAlign: TextAlign.center,
        style: context.typography.bodyLarge,
        cursorColor: context.colors.secondary,
        textInputAction: TextInputAction.done,
        placeholder: placeHolder,
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.divider,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
