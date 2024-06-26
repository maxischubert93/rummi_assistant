import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/in_game/presentation/controller/settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      body: Center(
        child: AppButton.primary(
          text: 'Finish game',
          onPressed: () => ref.read(settingsControllerProvider.notifier).finishGame(),
        ),
      ),
    );
  }
}
