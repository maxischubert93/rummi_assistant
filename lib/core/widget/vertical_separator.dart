import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';

class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({
    this.height = double.infinity,
    this.color,
    super.key,
  });

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 1,
      color: color ?? context.colors.divider,
    );
  }
}
