import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';
import 'package:rummi_assistant/core/widget/button/base_button.dart';

@immutable
class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    required this.onPressed,
    required this.isEnabled,
    super.key,
  });

  final bool isEnabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final style = context.colors.buttonTheme.appBarButton;

    final icon = Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back;
    return BaseButton(
      isEnabled: isEnabled,
      style: style,
      text: null,
      centerIcon: icon,
      onPressed: onPressed,
      isLoading: false,
      expand: false,
    );
  }
}
