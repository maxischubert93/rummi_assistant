import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/name_text_field.dart';
import 'package:rummi_assistant/feature/home/presentation/controller/player_names_controller.dart';
import 'package:rummi_assistant/feature/home/presentation/controller/player_names_state.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerNamesModal extends ConsumerWidget {
  const PlayerNamesModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(playerNamesControllerProvider);

    return Column(
      children: [
        HeadlineSmall(context.localizations.playerNamesModalTitle),
        context.geometry.spacingMedium.verticalBox,
        for (var i = 0; i < state.playerNames.length; i++) _PlayerNameSection(index: i),
        Visibility.maintain(
          visible: state.errorCase != null,
          child: _ErrorText(errorCase: state.errorCase),
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

class _PlayerNameSection extends ConsumerWidget {
  const _PlayerNameSection({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PlayerNamesController notifier() => ref.read(playerNamesControllerProvider.notifier);

    return Padding(
      padding: EdgeInsets.only(bottom: context.geometry.spacingMedium),
      child: Surface(
        expand: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Subtitle(context.localizations.playerNamesModalSectionTitle(index + 1)),
            context.geometry.spacingMedium.verticalBox,
            NameTextField(
              key: ValueKey(index),
              onChanged: (value) => notifier().onPlayerNameChanged(index: index, name: value),
              onSubmitted: (_) => notifier().onSubmitted(index: index),
              focusNode: ref
                  .watch(playerNamesControllerProvider.select((state) => state.focusNodes[index])),
              initialValue: ref
                  .watch(playerNamesControllerProvider.select((state) => state.playerNames[index])),
              maxLength: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorText extends StatelessWidget {
  const _ErrorText({required this.errorCase});

  final ErrorCase? errorCase;

  @override
  Widget build(BuildContext context) {
    final text = switch (errorCase) {
      ErrorCase.emptyName => context.localizations.playerNamesModalErrorMissingName,
      ErrorCase.duplicateName => context.localizations.playerNamesModalErrorDuplicateName,
      null => context.localizations.playerNamesModalErrorMissingName,
    };

    return Row(
      children: [
        Icon(
          CupertinoIcons.exclamationmark_circle,
          color: context.colors.error,
        ),
        context.geometry.spacingSmall.horizontalBox,
        Body(text, color: context.colors.error),
      ],
    );
  }
}
