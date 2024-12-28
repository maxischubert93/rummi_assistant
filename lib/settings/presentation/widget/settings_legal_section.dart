import 'package:flutter/material.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class SettingsLegalSection extends StatelessWidget {
  const SettingsLegalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      title: context.localizations.settingsLegalSectionTitle,
      child: SeparatedColumn(
        spacing: context.geometry.spacingExtraSmall,
        children: [
          MenuButton(
            webUrl: context.localizations.urlPrivacyPolicy,
            title: context.localizations.settingsPrivacyPolicy,
            icon: Icons.privacy_tip,
          ),
          MenuButton(
            webUrl: context.localizations.urlTermsOfService,
            title: context.localizations.settingsTermsOfService,
            icon: Icons.description,
          ),
          MenuButton(
            routeName: RouteNames.licenses,
            title: context.localizations.settingsOpenSourceLicenses,
            icon: Icons.library_books,
          ),
        ],
      ),
    );
  }
}
