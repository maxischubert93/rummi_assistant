import 'package:flutter/cupertino.dart';
import 'package:rummi_assistant/app/theme/shadows.dart';
import 'package:rummi_assistant/app/theme/util/context_extension.dart';

class Surface extends StatelessWidget {
  const Surface({
    this.child,
    this.width,
    this.height,
    this.expand = false,
    super.key,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? (expand ? double.infinity : null),
      height: height,
      padding: context.geometry.mediumPadding,
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: context.geometry.radiusMedium,
        boxShadow: Shadows.surfaceShadow,
      ),
      child: child,
    );
  }
}
