import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/util/extension/target_platform.dart';

class PlatformModalPage<T> extends Page<T> {
  const PlatformModalPage({
    required this.builder,
    this.applyPadding = true,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  final WidgetBuilder builder;
  final bool applyPadding;

  @override
  Route<T> createRoute(BuildContext context) {
    return switch (defaultTargetPlatform.isIOS) {
      true => CupertinoModalBottomSheetRoute<T>(
          settings: this,
          expanded: false,
          builder: builder,
          containerBuilder: (context, animation, child) => _ModalContainer(
            applyPadding: applyPadding,
            child: child,
          ),
        ),
      false => ModalSheetRoute<T>(
          settings: this,
          expanded: false,
          builder: (context) => Material(child: builder(context)),
          containerBuilder: (context, animation, child) => _ModalContainer(
            applyPadding: applyPadding,
            child: child,
          ),
        ),
    };
  }
}

class _ModalContainer extends StatelessWidget {
  const _ModalContainer({required this.child, this.applyPadding = true});

  final Widget child;
  final bool applyPadding;

  @override
  Widget build(BuildContext context) {
    final geometry = context.geometry;

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: LayoutBuilder(
          builder: (_, constraints) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              geometry.spacingMedium.verticalBox,
              const _Handlebar(),
              geometry.spacingExtraLarge.verticalBox,
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: constraints.maxHeight -
                      geometry.spacingMedium -
                      geometry.spacingExtraLarge -
                      4,
                ),
                child: SingleChildScrollView(
                  padding: applyPadding
                      ? EdgeInsets.symmetric(horizontal: geometry.spacingMedium)
                      : null,
                  controller: ModalScrollController.of(context),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Handlebar extends StatelessWidget {
  const _Handlebar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 4,
      decoration: ShapeDecoration(
        color: context.colors.divider,
        shape: const StadiumBorder(),
      ),
    );
  }
}
