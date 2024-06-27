import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/app_bar.dart';
import 'package:rummi_assistant/core/widget/button/app_bar_button.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.excludePadding = false,
    this.statusBarBrightness = Brightness.light,
    this.resizeToAvoidBottomInset = true,
    this.appBarTitle,
    super.key,
  });

  final Widget body;
  final bool excludePadding;
  final Brightness statusBarBrightness;
  final bool resizeToAvoidBottomInset;
  final String? appBarTitle;

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
        material: (_, __) => MaterialScaffoldData(
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        ),
        cupertino: (_, __) => CupertinoPageScaffoldData(
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        ),
        appBar: appBarTitle != null
            ? RummiAppBar(
                title: HeadlineMedium(appBarTitle!),
                leading: context.canPop()
                    ? AppBarBackButton(onPressed: () => context.pop(), isEnabled: true)
                    : null,
              )
            : null,
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
