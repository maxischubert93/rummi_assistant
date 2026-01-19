import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/game.dart';
import 'package:rummi_assistant/feature/home/presentation/home_controller.dart';
import 'package:rummi_assistant/feature/home/presentation/widgets/new_game_card.dart';
import 'package:rummi_assistant/feature/settings/settings.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeControllerProvider);

    return AppScaffold(
      resizeToAvoidBottomInset: false,
      excludePadding: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: context.geometry.mediumPadding,
          child: Column(
            children: [
              context.geometry.spacingExtraLarge.verticalBox,
              Center(
                child: Display(
                  context.localizations.appName,
                  singleLine: false,
                ),
              ),
              context.geometry.spacingDoubleExtraLarge.verticalBox,
              NewGameCard(
                onStartGame: controller.onNewGame,
              ),
              context.geometry.spacingDoubleExtraLarge.verticalBox,
              const GameHistorySection(),
              context.geometry.spacingLarge.verticalBox,
              const SettingsLegalSection(),
              context.geometry.spacingDoubleExtraLarge.verticalBox,
            ],
          ),
        ),
      ),
    );
  }
}
