import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/app/theme/util/context_extension.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.excludePadding = false,
    super.key,
  });

  final Widget body;
  final bool excludePadding;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: context.colors.background,
      body: switch (excludePadding) {
        true => body,
        false => Padding(
            padding: context.geometry.mediumPadding,
            child: SafeArea(child: body),
          ),
      },
    );
  }
}
