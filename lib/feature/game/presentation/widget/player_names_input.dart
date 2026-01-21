import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/presentation/widget/name_text_field.dart';
import 'package:rummi_assistant/feature/game/presentation/player_names/player_names_state.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class PlayerNamesInput extends ConsumerWidget {
  const PlayerNamesInput({
    required this.focusNodes,
    required this.onPlayerNameChanged,
    required this.onSubmitted,
    required this.playerNames,
    required this.errorCase,
    super.key,
  });

  final List<String> playerNames;
  final List<FocusNode> focusNodes;
  final ErrorCase? errorCase;
  final void Function(int, String) onPlayerNameChanged;
  final void Function(int) onSubmitted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < playerNames.length; i++)
          _PlayerNameSection(
            index: i,
            focusNode: focusNodes[i],
            initialValue: playerNames[i],
            onChanged: onPlayerNameChanged,
            onSubmitted: onSubmitted,
          ),
        Visibility.maintain(
          visible: errorCase != null,
          child: _ErrorText(errorCase: errorCase),
        ),
      ],
    );
  }
}

class _PlayerNameSection extends ConsumerWidget {
  const _PlayerNameSection({
    required this.focusNode,
    required this.initialValue,
    required this.onChanged,
    required this.onSubmitted,
    required this.index,
  });

  final int index;
  final String initialValue;
  final FocusNode focusNode;
  final void Function(int, String) onChanged;
  final void Function(int) onSubmitted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              onChanged: (value) => onChanged(index, value),
              onSubmitted: (_) => onSubmitted(index),
              focusNode: focusNode,
              initialValue: initialValue,
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
