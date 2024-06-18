import 'package:flutter/material.dart';
import 'package:rummi_assistant/app/app.dart';
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
        ],
      ),
    );
  }
}

class _PlayerSelection extends StatelessWidget {
  const _PlayerSelection();

  @override
  Widget build(BuildContext context) {
    return Surface(
      expand: true,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Subtitle('Buttons'),
        context.geometry.spacingMedium.verticalBox,
        AppButton.primary(
          text: 'Primary Button',
          onPressed: () {},
          trailingIcon: Assets.icons.chevronRight,
        ),
        AppButton.secondary(text: 'Secondary Button', onPressed: () {}),
        AppButton.tertiary(text: 'Tertiary Button', onPressed: () {}),
      ]),
    );
  }
}
