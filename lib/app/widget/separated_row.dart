import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/app/app.dart';

class SeparatedRow extends StatelessWidget {
  const SeparatedRow({
    required this.children,
    this.spacing,
    this.customSeparator,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.textBaseline,
    super.key,
  });

  final List<Widget> children;
  final double? spacing;
  final Widget? customSeparator;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final TextBaseline? textBaseline;

  @override
  Widget build(BuildContext context) {
    final spacedChildren = <Widget>[];
    for (final (index, item) in children.indexed) {
      spacedChildren.add(item);
      if (index < children.length - 1) {
        spacedChildren
            .add(customSeparator ?? (spacing ?? context.geometry.spacingSmall).horizontalBox);
      }
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      textBaseline: textBaseline,
      children: spacedChildren,
    );
  }
}
