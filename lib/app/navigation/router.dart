import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/navigation/custom_page/platform_modal_page.dart';
import 'package:rummi_assistant/app/navigation/route_names.dart';
import 'package:rummi_assistant/app/widget/bottom_navigation_wrapper.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/home/presentation/home_screen.dart';
import 'package:rummi_assistant/home/presentation/timer_selection_modal.dart';
import 'package:rummi_assistant/in_game/presentation/score_input_modal.dart';
import 'package:rummi_assistant/in_game/presentation/score_screen.dart';
import 'package:rummi_assistant/in_game/presentation/timer_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _timerTabNavigatorKey = GlobalKey<NavigatorState>();
final _scoreTabNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildRouter() => GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          name: RouteNames.home,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'timer-selection',
              name: RouteNames.timerModal,
              pageBuilder: (context, state) => PlatformModalPage<String?>(
                builder: (_) => const TimerSelectionModal(),
              ),
            ),
            GoRoute(
              path: 'score-input',
              name: RouteNames.scoreInputModal,
              pageBuilder: (context, state) => PlatformModalPage(
                applyPadding: false,
                builder: (_) => const ScoreInputModal(),
              ),
            ),
            StatefulShellRoute.indexedStack(
              redirect: (_, __) {
                if (!GetIt.instance.get<GameManager>().hasRunningGame) {
                  return '/';
                } else {
                  return null;
                }
              },
              parentNavigatorKey: _rootNavigatorKey,
              builder: (_, __, navigationShell) =>
                  BottomNavigationWrapper(navigationShell: navigationShell),
              branches: [
                StatefulShellBranch(
                  navigatorKey: _timerTabNavigatorKey,
                  routes: [
                    GoRoute(
                      path: 'timer',
                      name: RouteNames.timer,
                      builder: (_, __) => const TimerScreen(),
                    ),
                  ],
                ),
                StatefulShellBranch(
                  navigatorKey: _scoreTabNavigatorKey,
                  routes: [
                    GoRoute(
                      path: 'score',
                      name: RouteNames.score,
                      builder: (_, __) => const ScoreScreen(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
