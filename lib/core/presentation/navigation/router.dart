import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/core/presentation/navigation/bottom_navigation_wrapper.dart';
import 'package:rummi_assistant/core/presentation/navigation/custom_page/platform_modal_page.dart';
import 'package:rummi_assistant/core/presentation/navigation/route_names.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/game/presentation/game_history_screen.dart';
import 'package:rummi_assistant/feature/game/presentation/score_input_modal.dart';
import 'package:rummi_assistant/feature/game/presentation/score_screen.dart';
import 'package:rummi_assistant/feature/home/presentation/home_screen.dart';
import 'package:rummi_assistant/feature/home/presentation/player_names_modal.dart';
import 'package:rummi_assistant/feature/settings/domain/model/license.dart';
import 'package:rummi_assistant/feature/settings/presentation/licences_screen.dart';
import 'package:rummi_assistant/feature/settings/presentation/license_detail_screen.dart';
import 'package:rummi_assistant/feature/settings/presentation/settings_screen.dart';
import 'package:rummi_assistant/feature/timer/presentation/timer_screen.dart';
import 'package:rummi_assistant/feature/timer/presentation/timer_selection_modal.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _timerTabNavigatorKey = GlobalKey<NavigatorState>();
final _scoreTabNavigatorKey = GlobalKey<NavigatorState>();
final _settingsTabNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildRouter() => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/timer',
      routes: [
        StatefulShellRoute.indexedStack(
          redirect: (_, _) {
            if (!GetIt.instance.get<GameManager>().hasRunningGame) {
              return '/home';
            } else {
              return null;
            }
          },
          parentNavigatorKey: _rootNavigatorKey,
          builder: (_, _, navigationShell) =>
              BottomNavigationWrapper(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              navigatorKey: _timerTabNavigatorKey,
              routes: [
                GoRoute(
                  parentNavigatorKey: _timerTabNavigatorKey,
                  path: '/timer',
                  name: RouteNames.timer,
                  builder: (_, _) => const TimerScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _scoreTabNavigatorKey,
              routes: [
                GoRoute(
                  parentNavigatorKey: _scoreTabNavigatorKey,
                  path: '/score',
                  name: RouteNames.score,
                  builder: (_, _) => const ScoreScreen(),
                  routes: [
                    GoRoute(
                      path: 'score-input',
                      parentNavigatorKey: _rootNavigatorKey,
                      name: RouteNames.scoreInputModal,
                      pageBuilder: (context, state) => PlatformModalPage(
                        applyPadding: false,
                        builder: (_) => const ScoreInputModal(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _settingsTabNavigatorKey,
              routes: [
                GoRoute(
                  parentNavigatorKey: _settingsTabNavigatorKey,
                  path: '/settings',
                  name: RouteNames.settings,
                  builder: (_, _) => const SettingsScreen(),
                  routes: [
                    GoRoute(
                      path: 'licenses',
                      name: RouteNames.licenses,
                      builder: (_, _) => const LicensesScreen(),
                      routes: [
                        GoRoute(
                          path: 'license-detail',
                          name: RouteNames.licenseDetail,
                          builder: (_, state) => LicenseDetailScreen(
                            license: state.extra! as License,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/home',
          name: RouteNames.home,
          builder: (_, _) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'timer-selection',
              name: RouteNames.timerModal,
              pageBuilder: (context, state) => PlatformModalPage<String?>(
                builder: (_) => const TimerSelectionModal(),
              ),
            ),
            GoRoute(
              path: 'player-names',
              name: RouteNames.playerNamesModal,
              pageBuilder: (context, state) => PlatformModalPage<List<String>>(
                builder: (_) => const PlayerNamesModal(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/game-history',
          name: RouteNames.gameHistory,
          builder: (_, _) => const GameHistoryScreen(),
        ),
        GoRoute(
          path: '/game-detail',
          name: RouteNames.gameDetail,
          builder: (context, state) {
            final gameId = state.extra as int?;
            return ScoreScreen(gameId: gameId);
          },
        ),
      ],
    );
