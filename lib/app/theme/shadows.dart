import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';

class Shadows {
  static List<BoxShadow> surfaceShadow = [
    BoxShadow(
      color: AppColors.grey[500]!.withOpacity(0.2),
      blurRadius: 2,
      offset: const Offset(1, 2),
    ),
  ];
}
