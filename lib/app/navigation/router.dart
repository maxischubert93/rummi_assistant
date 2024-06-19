import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/widget/bottom_navigation_wrapper.dart';
import 'package:rummi_assistant/home/presentation/home_screen.dart';
import 'package:rummi_assistant/score/presentation/score_screen.dart';
import 'package:rummi_assistant/timer/presentation/timer_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _timerTabNavigatorKey = GlobalKey<NavigatorState>();
final _scoreTabNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildRouter() => GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        StatefulShellRoute.indexedStack(
          parentNavigatorKey: _rootNavigatorKey,
          builder: (_, __, navigationShell) =>
              BottomNavigationWrapper(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              navigatorKey: _timerTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/timer',
                  builder: (_, __) => const TimerScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _scoreTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/score',
                  builder: (_, __) => const ScoreScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
