import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/presentation/new_game/new_game_config.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerStepScreen extends ConsumerWidget {
  const PlayerStepScreen({required this.config, super.key});

  final NewGameConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            ],
          ),
        ),
      ),
    );
  }
}
