import 'package:flutter/material.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';

class Display extends _BaseText {
  Display(
    super.text, {
    super.singleLine = true,
    super.textAlign = TextAlign.center,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.display);
}

class HeadlineLarge extends _BaseText {
  HeadlineLarge(
    super.text, {
    super.singleLine = true,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.headlineLarge);
}

class HeadlineMedium extends _BaseText {
  HeadlineMedium(
    super.text, {
    super.singleLine = true,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.headlineMedium);
}

class HeadlineSmall extends _BaseText {
  HeadlineSmall(
    super.text, {
    super.singleLine = true,
    super.maxLines,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.headlineSmall);
}

class Subtitle extends _BaseText {
  Subtitle(
    super.text, {
    super.singleLine = true,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.subtitle);
}

class Body extends _BaseText {
  Body(
    super.text, {
    super.singleLine,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.body);
}

class BodyLarge extends _BaseText {
  BodyLarge(
    super.text, {
    super.singleLine,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.bodyLarge);
}

class BodySmall extends _BaseText {
  BodySmall(
    super.text, {
    super.singleLine,
    super.textAlign,
    super.color,
    super.key,
  }) : super(style: (context) => context.typography.bodySmall);
}

class Button extends _BaseText {
  Button(
    super.text, {
    super.color,
    super.key,
    super.singleLine = true,
    super.textAlign = TextAlign.center,
  }) : super(style: (context) => context.typography.button);
}

class _BaseText extends StatelessWidget {
  const _BaseText(
    this.text, {
    required this.style,
    this.singleLine = false,
    this.maxLines,
    this.textAlign,
    this.color,
    super.key,
  });

  final String text;
  final TextStyle? Function(BuildContext) style;
  final bool singleLine;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style(context)?.apply(color: color),
      maxLines: singleLine ? 1 : maxLines,
      overflow: singleLine || maxLines != null ? TextOverflow.ellipsis : null,
      textAlign: textAlign,
    );
  }
}
