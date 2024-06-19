import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rummi_assistant/app/app.dart';

const double _segmentHeight = 48;

class SegmentedControl<T extends Object> extends StatelessWidget {
  const SegmentedControl({
    required this.segments,
    required this.currentValue,
    required this.onValueChanged,
    this.isCustomSegmentSelected = false,
    this.customSegmentText,
    this.onCustomSegmentPressed,
    super.key,
  });

  final Map<T, String> segments;
  final T currentValue;
  final void Function(T) onValueChanged;

  final bool isCustomSegmentSelected;
  final String? customSegmentText;
  final void Function()? onCustomSegmentPressed;

  @override
  Widget build(BuildContext context) {
    final hasCustomSegment = customSegmentText != null && onCustomSegmentPressed != null;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: StadiumBorder(
          side: BorderSide(
            color: context.colors.segmentedControlTheme.borderColor,
          ),
        ),
      ),
      child: SeparatedRow(
        customSeparator: Container(
          width: 1,
          height: _segmentHeight,
          color: context.colors.segmentedControlTheme.borderColor,
        ),
        children: [
          ...segments.entries.mapIndexed((index, entry) {
            final isSelected = entry.key == currentValue && !isCustomSegmentSelected;
            return _Segment<T>(
              text: entry.value,
              isSelected: isSelected,
              value: entry.key,
              onTap: (value) {
                assert(value != null, 'Regular segments should not have a null value');
                onValueChanged(value!);
              },
              segmentIndex: index,
              isLast: !hasCustomSegment && index == segments.length - 1,
            );
          }),
          if (hasCustomSegment)
            _Segment<T>(
              text: customSegmentText!,
              isSelected: isCustomSegmentSelected,
              value: null,
              onTap: (_) => onCustomSegmentPressed!.call(),
              segmentIndex: segments.length,
              isLast: true,
            ),
        ],
      ),
    );
  }
}

class _Segment<T extends Object> extends StatelessWidget {
  const _Segment({
    required this.text,
    required this.isSelected,
    required this.value,
    required this.onTap,
    required this.segmentIndex,
    required this.isLast,
  });

  final String text;
  final bool isSelected;
  final T? value;
  final void Function(T?) onTap;
  final int segmentIndex;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final colorIndex =
        segmentIndex % context.colors.segmentedControlTheme.contentColorSequence.length;

    final contentColor = isSelected
        ? context.colors.segmentedControlTheme.contentColorSequence[colorIndex]
        : context.colors.segmentedControlTheme.unselectedContentColor;

    final backgroundColor = isSelected
        ? context.colors.segmentedControlTheme.backgroundColorSequence[colorIndex]
        : context.colors.segmentedControlTheme.unselectedBackgroundColor;

    final highlightColor = context.colors.segmentedControlTheme.highlightColorSequence[colorIndex];

    final borderRadius = BorderRadius.horizontal(
      left: Radius.circular(segmentIndex == 0 ? 24 : 0),
      right: Radius.circular(isLast ? 24 : 0),
    );

    return Expanded(
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        height: _segmentHeight,
        duration: const Duration(milliseconds: 200),
        child: PlatformClickListener(
          highlightColor: highlightColor,
          border: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          onTap: () => onTap(value),
          child: Center(
            child: BodyLarge(
              text,
              color: contentColor,
            ),
          ),
        ),
      ),
    );
  }
}
