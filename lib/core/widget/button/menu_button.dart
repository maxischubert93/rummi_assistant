import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/interactor/url_interactor.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    required this.title,
    required this.icon,
    this.webUrl,
    this.routeName,
    super.key,
  }) : assert(routeName != null || webUrl != null, 'routeName or webUrl must be provided');

  final String? routeName;
  final String? webUrl;
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
                color: context.colors.primaryLightest.withValues(alpha: 0.6),
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
        if (webUrl != null) {
          GetIt.instance<UrlInteractor>().openUrl(webUrl!);
        } else if (routeName != null) {
          context.pushNamed(routeName!);
        }
      },
    );
  }
}
