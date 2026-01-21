import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_controller.dart';
import 'package:rummi_assistant/feature/game/presentation/widget/player_names_input.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerNameStepScreen extends ConsumerWidget {
  const PlayerNameStepScreen({required this.config, super.key});

  final NewGameConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newGameControllerProvider(config));
    final controller = ref.read(newGameControllerProvider(config).notifier);

    return AppScaffold(
      appBarTitle: context.localizations.newGamePlayerNamesStepTitle,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: context.geometry.mediumPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PlayerNamesInput(
                focusNodes: state.focusNodes,
                onPlayerNameChanged: controller.onPlayerNameChanged,
                onSubmitted: controller.onPlayerNameSubmitted,
                playerNames: state.playerNames,
                errorCase: state.errorCase,
              ),
              context.geometry.spacingMedium.verticalBox,
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.geometry.maxContentWidth),
                child: AppButton.primary(
                  text: context.localizations.newGameContinueButton,
                  onPressed: controller.onPlayerNameStepFinished,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
