import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';

class BottomNavigationWrapper extends StatelessWidget {
  const BottomNavigationWrapper({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      cupertino: (_, __) => CupertinoPageScaffoldData(
        widgetKey: ValueKey(navigationShell.currentIndex),
      ),
      body: navigationShell,
      bottomNavBar: PlatformNavBar(
        currentIndex: navigationShell.currentIndex,
        itemChanged: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        cupertino: (_, __) => CupertinoTabBarData(
          inactiveColor: context.colors.navBarTheme.inactive,
          activeColor: context.colors.navBarTheme.active,
          iconSize: 24,
          border: Border(
            top: BorderSide(
              color: context.colors.navigation,
              width: 0,
            ),
          ),
        ),
        material3: (_, __) => MaterialNavigationBarData(
          elevation: 0,
          indicatorColor: context.colors.navBarTheme.materialIndicatorColor,
          overlayColor: WidgetStatePropertyAll<Color>(
            context.colors.navBarTheme.materialRippleColor,
          ),
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Score',
          ),
        ],
      ),
    );
  }
}
