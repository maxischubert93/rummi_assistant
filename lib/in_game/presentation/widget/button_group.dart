import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/app/theme/app_colors.dart';
import 'package:rummi_assistant/core/core.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({
    required this.buttonTexts,
    required this.selectedIndex,
    required this.onSelected,
    super.key,
  });

  final List<String> buttonTexts;
  final int selectedIndex;
  final void Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: context.geometry.spacingSmall,
      runSpacing: context.geometry.spacingSmall,
      children: buttonTexts.mapIndexed((index, text) {
        return _SelectableButton(
          isSelected: index == selectedIndex,
          onTap: () => onSelected(index),
          text: text,
        );
      }).toList(),
    );
  }
}

class _SelectableButton extends StatelessWidget {
  const _SelectableButton({
    required this.isSelected,
    required this.onTap,
    required this.text,
  });

  final bool isSelected;
  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);

    return PlatformClickListener(
      border: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.geometry.spacingMedium,
          vertical: context.geometry.spacingSmall,
        ),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.primary : AppColors.transparent,
          borderRadius: borderRadius,
          border: Border.all(
            color: context.colors.primary,
            width: 1,
          ),
        ),
        child: Button(
          text,
          color: isSelected ? context.colors.onPrimary : context.colors.primary,
        ),
      ),
    );
  }
}
