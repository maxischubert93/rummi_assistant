import 'package:flutter/cupertino.dart';

class ScoreInputModal extends StatefulWidget {
  const ScoreInputModal({super.key});

  @override
  State<ScoreInputModal> createState() => _ScoreInputModalState();
}

class _ScoreInputModalState extends State<ScoreInputModal> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      child: Center(child: Text('Score input')),
    );
  }
}
