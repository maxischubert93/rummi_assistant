import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.excludePadding = false,
    this.statusBarBrightness = Brightness.light,
    super.key,
  });

  final Widget body;
  final bool excludePadding;
  final Brightness statusBarBrightness;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarBrightness.androidValue,
        statusBarBrightness: statusBarBrightness,
        systemNavigationBarColor: context.colors.navigation,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.transparent,
      ),
      child: PlatformScaffold(
        backgroundColor: context.colors.background,
        body: switch (excludePadding) {
          true => body,
          false => Padding(
              padding: context.geometry.mediumPadding,
              child: SafeArea(child: body),
            ),
        },
      ),
    );
  }
}

extension _BrightnessAndroid on Brightness {
  Brightness get androidValue => switch (this) {
        Brightness.light => Brightness.dark,
        Brightness.dark => Brightness.light,
      };
}
