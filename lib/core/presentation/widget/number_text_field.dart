import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rummi_assistant/core/core.dart';

class NumberTextField extends StatelessWidget {
  const NumberTextField({
    required this.onChanged,
    required this.maxLength,
    this.onSubmitted,
    this.enabled = true,
    this.placeHolder,
    this.focusNode,
    super.key,
  });

  final void Function(String) onChanged;
  final void Function(String)? onSubmitted;
  final int maxLength;
  final bool enabled;
  final String? placeHolder;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 50,
      child: CupertinoTextField(
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        maxLength: 3,
        padding: const EdgeInsets.all(12),
        keyboardType: TextInputType.number,
        enabled: enabled,
        textAlign: TextAlign.center,
        style: context.typography.bodyLarge,
        cursorColor: context.colors.secondary,
        textInputAction: TextInputAction.done,
        placeholder: placeHolder,
        onTapOutside: (_) => FocusScope.of(context).unfocus(),
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.divider,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
