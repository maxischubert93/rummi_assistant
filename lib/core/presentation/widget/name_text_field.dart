import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rummi_assistant/core/core.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({
    required this.onChanged,
    required this.onSubmitted,
    required this.maxLength,
    this.enabled = true,
    this.placeHolder,
    this.initialValue,
    this.focusNode,
    super.key,
  });

  final void Function(String) onChanged;
  final void Function(String) onSubmitted;
  final int maxLength;
  final bool enabled;
  final String? placeHolder;
  final String? initialValue;
  final FocusNode? focusNode;

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.initialValue ?? '';
    widget.focusNode?.addListener(() {
      if (widget.focusNode?.hasFocus ?? false) {
        _controller.selection = TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 50,
      child: CupertinoTextField(
        controller: _controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        maxLength: widget.maxLength,
        padding: const EdgeInsets.all(12),
        keyboardType: TextInputType.name,
        enabled: widget.enabled,
        style: context.typography.bodyLarge,
        cursorColor: context.colors.secondary,
        textInputAction: TextInputAction.done,
        placeholder: widget.placeHolder,
        onTapOutside: (_) => FocusScope.of(context).unfocus(),
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.divider,
          ),
          borderRadius: BorderRadius.circular(8),
          color: context.colors.background,
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(widget.maxLength),
          FilteringTextInputFormatter.singleLineFormatter,
        ],
      ),
    );
  }
}
