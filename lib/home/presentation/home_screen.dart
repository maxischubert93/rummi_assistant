import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/home/presentation/model/home_controller.dart';
import 'package:rummi_assistant/util/assets/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          context.geometry.spacingDoubleExtraLarge.verticalBox,
          Center(
            child: Display(
              'Rummi Assistant',
              singleLine: false,
            ),
          ),
          const Spacer(),
          const _PlayerSelection(),
          const Spacer(),
          Surface(
            expand: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Subtitle('Buttons'),
                context.geometry.spacingMedium.verticalBox,
                AppButton.primary(
                  text: 'Primary Button',
                  onPressed: () {},
                  trailingIcon: Assets.icons.chevronRight,
                ),
                AppButton.secondary(text: 'Secondary Button', onPressed: () {}),
                AppButton.tertiary(text: 'Tertiary Button', onPressed: () {}),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _PlayerSelection extends ConsumerWidget {
  const _PlayerSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Surface(
      expand: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle('Players'),
          context.geometry.spacingMedium.verticalBox,
          SegmentedControl<int>(
            segments: const {
              2: '2 Players',
              3: '3 Players',
              4: '4 Players',
            },
            currentValue: ref.watch(homeControllerProvider).playerAmount,
            onValueChanged: (value) =>
                ref.read(homeControllerProvider.notifier).setPlayerAmount(value),
          ),
        ],
      ),
    );
  }
}
