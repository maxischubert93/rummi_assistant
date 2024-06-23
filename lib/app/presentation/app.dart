import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/theme/app_theme.dart';
import 'package:rummi_assistant/app/theme/util/platform_theme.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final router = GetIt.instance.get<GoRouter>();

    return AppTheme(
      brightness: Brightness.light,
      child: PlatformApp.router(
        material: (context, _) => AppTheme.of(context).materialAppRouterData,
        cupertino: (context, _) => AppTheme.of(context).cupertinoAppRouterData,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
