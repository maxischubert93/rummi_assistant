import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/core/core.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    required this.isEnabled,
    required this.style,
    required this.text,
    required this.onPressed,
    required this.isLoading,
    this.expand = true,
    this.leadingIcon,
    this.trailingIcon,
    this.centerIcon,
    super.key,
  }) : assert(text == null || centerIcon == null, 'Only one of text or centerIcon can be provided');

  final bool isEnabled;
  final bool expand;
  final AppButtonStyle style;
  final VoidCallback onPressed;
  final bool isLoading;
  final String? text;
  final IconData? centerIcon;

  final SvgGenImage? leadingIcon;
  final SvgGenImage? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return _FoundationButton(
      isEnabled: isEnabled,
      style: style,
      onPressed: onPressed,
      borderRadius: BorderRadius.circular(40),
      text: text,
      centerIcon: centerIcon,
      isLoading: isLoading,
      expand: expand,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.text,
    required this.centerIcon,
    required this.isLoading,
    required this.style,
    required this.expand,
    this.leadingIcon,
    this.trailingIcon,
    this.isPressedIOS = false,
  });

  final bool isLoading;
  final bool expand;
  final SvgGenImage? leadingIcon;
  final SvgGenImage? trailingIcon;
  final AppButtonStyle style;
  final String? text;
  final IconData? centerIcon;
  final bool isPressedIOS;

  @override
  Widget build(BuildContext context) {
    final geometry = context.geometry;

    final contentColor = isPressedIOS ? style.iOSPressed.content : style.active.content;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      child: Stack(
        children: [
          Visibility.maintain(
            visible: !isLoading,
            child: Row(
              mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) leadingIcon!.coloredSvg(contentColor),
                if (leadingIcon != null) geometry.spacingSmall.horizontalBox,
                if (text != null) Button(text!, color: contentColor),
                if (centerIcon != null) Icon(centerIcon, color: contentColor),
                if (trailingIcon != null) geometry.spacingSmall.horizontalBox,
                if (trailingIcon != null) trailingIcon!.coloredSvg(contentColor),
              ],
            ),
          ),
          Positioned.fill(
            child: Visibility(
              visible: isLoading,
              child: Center(
                child: CircularProgressIndicator(color: style.active.content),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FoundationButton extends StatelessWidget {
  const _FoundationButton({
    required this.isEnabled,
    required this.style,
    required this.onPressed,
    required this.text,
    required this.centerIcon,
    required this.isLoading,
    required this.expand,
    this.borderRadius,
    this.leadingIcon,
    this.trailingIcon,
  });

  final bool isEnabled;
  final AppButtonStyle style;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;
  final bool isLoading;
  final bool expand;
  final SvgGenImage? leadingIcon;
  final SvgGenImage? trailingIcon;
  final String? text;
  final IconData? centerIcon;

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      material: (_, _) => _MaterialButton(
        isEnabled: isEnabled,
        style: style,
        onPressed: onPressed,
        borderRadius: borderRadius,
        child: _Content(
          text: text,
          centerIcon: centerIcon,
          isLoading: isLoading,
          expand: expand,
          style: style,
          leadingIcon: leadingIcon,
          trailingIcon: trailingIcon,
        ),
      ),
      cupertino: (_, _) => _CupertinoButton(
        isEnabled: isEnabled,
        style: style,
        onPressed: onPressed,
        borderRadius: borderRadius,
        text: text,
        centerIcon: centerIcon,
        isLoading: isLoading,
        expand: expand,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
      ),
    );
  }
}

class _MaterialButton extends StatelessWidget {
  const _MaterialButton({
    required this.isEnabled,
    required this.style,
    required this.child,
    required this.onPressed,
    this.borderRadius,
  });

  final bool isEnabled;
  final AppButtonStyle style;
  final Widget child;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;

  Color get _borderColor {
    if (!isEnabled) return style.disabled.border;
    return style.active.border;
  }

  ButtonStyle get _style {
    final backgroundColor = WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return style.disabled.background;
      } else {
        return style.active.background;
      }
    });

    final splashColor = WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return style.androidRipple;
      } else {
        return null;
      }
    });

    return ButtonStyle(
      padding: WidgetStateProperty.all(EdgeInsets.zero),
      minimumSize: WidgetStateProperty.all(Size.zero),
      backgroundColor: backgroundColor,
      elevation: WidgetStateProperty.all(0),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      overlayColor: splashColor,
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: _borderColor),
      ),
      child: ElevatedButton(
        style: _style,
        onPressed: isEnabled ? onPressed : null,
        child: child,
      ),
    );
  }
}

class _CupertinoButton extends StatefulWidget {
  const _CupertinoButton({
    required this.isEnabled,
    required this.style,
    required this.borderRadius,
    required this.onPressed,
    required this.isLoading,
    required this.expand,
    this.leadingIcon,
    this.trailingIcon,
    this.text,
    this.centerIcon,
  });

  final bool isEnabled;
  final AppButtonStyle style;
  final BorderRadius? borderRadius;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool expand;
  final SvgGenImage? leadingIcon;
  final SvgGenImage? trailingIcon;
  final String? text;
  final IconData? centerIcon;

  @override
  State<_CupertinoButton> createState() => _CupertinoButtonState();
}

class _CupertinoButtonState extends State<_CupertinoButton> {
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  set isPressed(bool isPressed) {
    setState(() => _isPressed = isPressed);
  }

  Color get _backgroundColor {
    return isPressed ? widget.style.iOSPressed.background : widget.style.active.background;
  }

  Color get _borderColor {
    if (!widget.isEnabled) return widget.style.disabled.border;
    return isPressed ? widget.style.iOSPressed.border : widget.style.active.border;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        border: Border.all(color: _borderColor),
      ),
      child: GestureDetector(
        onTapDown: (_) => isPressed = true,
        onTapCancel: () => isPressed = false,
        onTapUp: (_) => isPressed = false,
        child: CupertinoButton(
          color: _backgroundColor,
          onPressed: widget.isEnabled ? widget.onPressed : null,
          disabledColor: widget.style.disabled.background,
          pressedOpacity: 1,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          borderRadius: widget.borderRadius,
          child: _Content(
            text: widget.text,
            centerIcon: widget.centerIcon,
            isLoading: widget.isLoading,
            expand: widget.expand,
            style: widget.style,
            leadingIcon: widget.leadingIcon,
            trailingIcon: widget.trailingIcon,
            isPressedIOS: isPressed,
          ),
        ),
      ),
    );
  }
}
