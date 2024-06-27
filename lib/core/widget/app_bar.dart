import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:rummi_assistant/core/extension/context_extension.dart';
import 'package:rummi_assistant/core/widget/separated_row.dart';

class RummiAppBar extends PlatformAppBar {
  RummiAppBar({
    required Widget super.title,
    super.trailingActions,
    super.leading,
    super.key,
  });

  @override
  PreferredSizeWidget createMaterialWidget(BuildContext context) {
    return AppBar(
      key: key,
      title: title,
      leading: Center(child: leading),
      actions: trailingActions
          ?.mapIndexed(
            (i, e) => Padding(
          padding: EdgeInsets.only(right: i == trailingActions!.length - 1 ? 12 : 0),
          child: SizedBox(width: 48, height: 48, child: e),
        ),
      )
          .toList(),
      centerTitle: true,
      elevation: 0,
      backgroundColor: context.colors.navigation,
      titleTextStyle: context.typography.headlineLarge,
      automaticallyImplyLeading: false,
    );
  }

  @override
  CupertinoNavigationBar createCupertinoWidget(BuildContext context) {
    final Widget? trailing;
    if (trailingActions?.isNotEmpty ?? false) {
      trailing = SeparatedRow(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [...trailingActions!, const SizedBox(width: 8)],
      );
    } else {
      trailing = null;
    }

    return CupertinoNavigationBar(
      padding: EdgeInsetsDirectional.zero,
      key: key,
      middle: title,
      leading: leading,
      trailing: trailing,
      border: null,
      backgroundColor: context.colors.navigation,
      brightness: Brightness.light,
    );
  }

}
