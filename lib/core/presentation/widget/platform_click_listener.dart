import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/core/core.dart';

class PlatformClickListener extends StatelessWidget {
  const PlatformClickListener({
    required this.child,
    required this.onTap,
    this.highlightColor,
    this.enabled = true,
    this.border,
    super.key,
  });

  final Widget child;
  final VoidCallback onTap;
  final bool enabled;
  final ShapeBorder? border;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      material: (_, _) => _MaterialClickListener(
        highlightColor: highlightColor ?? context.colors.onPrimary,
        onTap: onTap,
        enabled: enabled,
        border: border,
        child: child,
      ),
      cupertino: (_, _) => _CupertinoClickListener(
        highlightColor: highlightColor ?? context.colors.onPrimary,
        onTap: onTap,
        enabled: enabled,
        border: border,
        child: child,
      ),
    );
  }
}

class _CupertinoClickListener extends StatefulWidget {
  const _CupertinoClickListener({
    required this.child,
    required this.highlightColor,
    this.enabled = true,
    this.onTap,
    this.border,
  });

  final Widget child;
  final VoidCallback? onTap;
  final bool enabled;
  final ShapeBorder? border;
  final Color highlightColor;

  @override
  State<StatefulWidget> createState() => _CupertinoClickListenerState();
}

class _CupertinoClickListenerState extends State<_CupertinoClickListener>
    with SingleTickerProviderStateMixin {
  static const _fadeOutDuration = Duration(milliseconds: 10);
  static const _fadeInDuration = Duration(milliseconds: 100);

  late DecorationTween _opacityTween;
  late AnimationController _animationController;
  late Animation<Decoration> _opacityAnimation;

  bool _buttonHeldDown = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 100),
      value: 0,
      vsync: this,
    );
    _setTween();
    _opacityAnimation =
        _animationController.drive(CurveTween(curve: Curves.decelerate)).drive(_opacityTween);
  }

  @override
  void didUpdateWidget(_CupertinoClickListener old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    final highlightShape = widget.border ?? const RoundedRectangleBorder();

    _opacityTween = DecorationTween(
      begin: ShapeDecoration(
        shape: highlightShape,
        color: Colors.transparent,
      ),
      end: ShapeDecoration(
        shape: highlightShape,
        color: widget.highlightColor.withValues(alpha: 0.3),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController.isAnimating) return;
    final wasHeldDown = _buttonHeldDown;
    final ticker = _buttonHeldDown
        ? _animationController.animateTo(1, duration: _fadeOutDuration)
        : _animationController.animateTo(0, duration: _fadeInDuration);
    final _ = ticker.then<void>((value) {
      if (mounted && wasHeldDown != _buttonHeldDown) _animate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: widget.enabled ? _handleTapDown : null,
      onTapUp: widget.enabled ? _handleTapUp : null,
      onTapCancel: widget.enabled ? _handleTapCancel : null,
      onTap: widget.enabled ? widget.onTap : null,
      child: Semantics(
        button: true,
        child: DecoratedBoxTransition(
          position: DecorationPosition.foreground,
          decoration: _opacityAnimation,
          child: widget.child,
        ),
      ),
    );
  }
}

class _MaterialClickListener extends StatelessWidget {
  const _MaterialClickListener({
    required this.child,
    required this.onTap,
    required this.enabled,
    required this.highlightColor,
    this.border,
  });

  final Widget child;
  final VoidCallback onTap;
  final bool enabled;
  final ShapeBorder? border;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: border,
              onTap: enabled ? onTap : null,
              highlightColor: highlightColor.withValues(alpha: 0.12),
              splashColor: highlightColor.withValues(alpha: 0.2),
            ),
          ),
        ),
      ],
    );
  }
}
