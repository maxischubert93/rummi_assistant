import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/core/core.dart';

class Section extends StatelessWidget {
  const Section({
    required this.title,
    required this.child,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle(title),
          context.geometry.spacingMedium.verticalBox,
          child,
        ],
      ),
    );
  }
}
