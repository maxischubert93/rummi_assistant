import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class GameHistorySection extends StatelessWidget {
  const GameHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: context.localizations.gameHistorySectionTitle,
      child: AppButton.tertiary(
        text: context.localizations.gameHistoryButton,
        onPressed: () {
          context.pushNamed(RouteNames.gameHistory);
        },
      ),
    );
  }
}
