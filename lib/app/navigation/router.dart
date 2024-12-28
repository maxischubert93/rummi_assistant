import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/navigation/custom_page/platform_modal_page.dart';
import 'package:rummi_assistant/app/navigation/route_names.dart';
import 'package:rummi_assistant/app/widget/bottom_navigation_wrapper.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/game/presentation/game_history_screen.dart';
import 'package:rummi_assistant/game/presentation/score_input_modal.dart';
import 'package:rummi_assistant/game/presentation/score_screen.dart';
import 'package:rummi_assistant/home/presentation/home_screen.dart';
import 'package:rummi_assistant/home/presentation/player_names_modal.dart';
import 'package:rummi_assistant/settings/domain/model/license.dart';
import 'package:rummi_assistant/settings/presentation/licences_screen.dart';
import 'package:rummi_assistant/settings/presentation/license_detail_screen.dart';
import 'package:rummi_assistant/settings/presentation/settings_screen.dart';
import 'package:rummi_assistant/timer/presentation/timer_screen.dart';
import 'package:rummi_assistant/timer/presentation/timer_selection_modal.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _timerTabNavigatorKey = GlobalKey<NavigatorState>();
final _scoreTabNavigatorKey = GlobalKey<NavigatorState>();
final _settingsTabNavigatorKey = GlobalKey<NavigatorState>();

GoRouter buildRouter() => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/timer',
      routes: [
        StatefulShellRoute.indexedStack(
          redirect: (_, __) {
            if (!GetIt.instance.get<GameManager>().hasRunningGame) {
              return '/home';
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
                  parentNavigatorKey: _timerTabNavigatorKey,
                  path: '/timer',
                  name: RouteNames.timer,
                  builder: (_, __) => const TimerScreen(),
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
                  builder: (_, __) => const ScoreScreen(),
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
                  builder: (_, __) => const SettingsScreen(),
                  routes: [
                    GoRoute(
                      path: 'licenses',
                      name: RouteNames.licenses,
                      builder: (_, __) => const LicensesScreen(),
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
          builder: (_, __) => const HomeScreen(),
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
          builder: (_, __) => const GameHistoryScreen(),
        ),
      ],
    );
