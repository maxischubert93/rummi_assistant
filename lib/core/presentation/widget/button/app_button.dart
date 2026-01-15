import 'package:flutter/widgets.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';
import 'package:rummi_assistant/core/presentation/widget/button/base_button.dart';
import 'package:rummi_assistant/core/util/assets/assets.gen.dart';

enum _ButtonStyle { primary, secondary, tertiary }

@immutable
class AppButton extends StatelessWidget {
  factory AppButton.primary({
    required String text,
    required VoidCallback onPressed,
    bool isEnabled = true,
    bool isLoading = false,
    SvgGenImage? leadingIcon,
    SvgGenImage? trailingIcon,
    Key? key,
  }) =>
      AppButton._(
        isEnabled: isEnabled,
        isLoading: isLoading,
        onPressed: onPressed,
        text: text,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        style: _ButtonStyle.primary,
        key: key,
      );

  factory AppButton.secondary({
    required String text,
    required VoidCallback onPressed,
    bool isEnabled = true,
    bool isLoading = false,
    SvgGenImage? leadingIcon,
    SvgGenImage? trailingIcon,
    Key? key,
  }) =>
      AppButton._(
        isEnabled: isEnabled,
        isLoading: isLoading,
        onPressed: onPressed,
        text: text,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        style: _ButtonStyle.secondary,
        key: key,
      );

  factory AppButton.tertiary({
    required String text,
    required VoidCallback onPressed,
    bool isEnabled = true,
    bool isLoading = false,
    SvgGenImage? leadingIcon,
    SvgGenImage? trailingIcon,
    Key? key,
  }) =>
      AppButton._(
        isEnabled: isEnabled,
        isLoading: isLoading,
        onPressed: onPressed,
        text: text,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        style: _ButtonStyle.tertiary,
        key: key,
      );

  const AppButton._({
    required this.text,
    required this.onPressed,
    required this.isEnabled,
    required this.isLoading,
    required _ButtonStyle style,
    this.leadingIcon,
    this.trailingIcon,
    super.key,
  }) : _style = style;

  final bool isEnabled;
  final VoidCallback onPressed;
  final bool isLoading;
  final String text;
  final _ButtonStyle _style;

  final SvgGenImage? leadingIcon;
  final SvgGenImage? trailingIcon;

  @override
  Widget build(BuildContext context) {
    final style = switch (_style) {
      _ButtonStyle.primary => context.colors.buttonTheme.primary,
      _ButtonStyle.secondary => context.colors.buttonTheme.secondary,
      _ButtonStyle.tertiary => context.colors.buttonTheme.tertiary,
    };

    return BaseButton(
      isEnabled: isEnabled,
      style: style,
      text: text,
      onPressed: onPressed,
      isLoading: isLoading,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
    );
  }
}
