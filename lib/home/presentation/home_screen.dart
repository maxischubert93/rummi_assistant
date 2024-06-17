import 'package:flutter/material.dart';
import 'package:rummi_assistant/app/theme/geometry.dart';
import 'package:rummi_assistant/app/theme/util/context_extension.dart';
import 'package:rummi_assistant/app/widget/app_scaffold.dart';
import 'package:rummi_assistant/app/widget/surface.dart';
import 'package:rummi_assistant/app/widget/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          context.geometry.spacingDoubleExtraLarge.verticalBox,
          Center(
            child: Display('Rummi Assistant', singleLine: false,),
          ),
          const Spacer(),
          const _PlayerSelection(),
          const Spacer(),
          FloatingActionButton(
            backgroundColor: context.colors.primary,
            foregroundColor: context.colors.onPrimary,
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class _PlayerSelection extends StatelessWidget {
  const _PlayerSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Surface(
      expand: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subtitle('Players'),
          context.geometry.spacingMedium.verticalBox,
        ]
      ),
    );
  }
}
