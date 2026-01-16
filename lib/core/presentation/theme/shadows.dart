import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/core/presentation/theme/app_colors.dart';

class Shadows {
  static List<BoxShadow> surfaceShadow = [
    BoxShadow(
      color: AppColors.grey[500]!.withValues(alpha: 0.2),
      blurRadius: 2,
      offset: const Offset(1, 2),
    ),
  ];
}
