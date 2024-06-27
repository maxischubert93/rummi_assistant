import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    required this.routeName,
    required this.title,
    required this.icon,
    super.key,
  });

  final String routeName;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return PlatformClickListener(
      highlightColor: context.colors.primaryLight,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: context.geometry.spacingSmall),
        child: Row(
          children: [
            Container(
              decoration: ShapeDecoration(
                color: context.colors.primaryLightest.withOpacity(0.6),
                shape: const CircleBorder(),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.geometry.spacingExtraSmall),
                child: Icon(
                  icon,
                  color: context.colors.primary,
                ),
              ),
            ),
            context.geometry.spacingMedium.horizontalBox,
            Button(title),
            const Spacer(),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
      onTap: () {
        context.pushNamed(routeName);
      },
    );
  }
}
