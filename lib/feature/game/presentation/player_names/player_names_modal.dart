import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/feature/game/presentation/player_names/player_names_controller.dart';
import 'package:rummi_assistant/feature/game/presentation/widget/player_names_input.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerNamesModal extends ConsumerWidget {
  const PlayerNamesModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(playerNamesControllerProvider);
    final controller = ref.read(playerNamesControllerProvider.notifier);

    return Column(
      children: [
        HeadlineSmall(context.localizations.playerNamesModalTitle),
        context.geometry.spacingMedium.verticalBox,
        PlayerNamesInput(
          focusNodes: state.focusNodes,
          onPlayerNameChanged: controller.onPlayerNameChanged,
          onSubmitted: controller.onSubmitted,
          playerNames: state.playerNames,
          errorCase: state.errorCase,
        ),
        context.geometry.spacingMedium.verticalBox,
        AppButton.secondary(
          isEnabled: state.isConfirmButtonEnabled,
          text: context.localizations.playerNamesModalButton,
          onPressed: () =>
              ref.read(playerNamesControllerProvider.notifier).onConfirmButtonPressed(),
        ),
      ],
    );
  }
}
