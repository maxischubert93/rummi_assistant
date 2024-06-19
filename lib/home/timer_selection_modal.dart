import 'package:flutter/widgets.dart';

class TimerSelectionModal extends StatelessWidget {
  const TimerSelectionModal({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: Center(
        child: Text('Select custom timer duration'),
      ),
    );
  }
}
