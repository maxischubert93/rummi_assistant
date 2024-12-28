import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/app/app.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';
import 'package:rummi_assistant/settings/domain/model/license.dart';

final licencesProvider = FutureProvider<List<License>>(
  (_) async {
    final entries = await LicenseRegistry.licenses.toList();
    return entries
        .map(
          (e) => License(packageName: e.packages.first, paragraphs: e.paragraphs.toList()),
        )
        .toSet()
        .toList();
  },
);

class LicensesScreen extends ConsumerWidget {
  const LicensesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLicenses = ref.watch(licencesProvider);

    return AppScaffold(
      excludePadding: true,
      appBarTitle: context.localizations.settingsOpenSourceLicenses,
      body: asyncLicenses.when(
        data: (licenses) => _LicensesList(licenses: licenses),
        error: (_, __) => Center(
          child: Body(
            'Error loading licences',
            textAlign: TextAlign.center,
            color: context.colors.onError,
          ),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(
            color: context.colors.primary,
          ),
        ),
      ),
    );
  }
}

class _LicensesList extends StatelessWidget {
  const _LicensesList({required this.licenses});

  final List<License> licenses;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: context.geometry.mediumPadding,
      child: SeparatedColumn(
        children: licenses.map((license) => _LicenseButton(license: license)).toList(),
      ),
    );
  }
}

class _LicenseButton extends StatelessWidget {
  const _LicenseButton({required this.license});

  final License license;

  @override
  Widget build(BuildContext context) {
    return PlatformClickListener(
      highlightColor: context.colors.onPrimary,
      border: RoundedRectangleBorder(
        borderRadius: context.geometry.radiusMedium,
      ),
      onTap: () {
        context.pushNamed(RouteNames.licenseDetail, extra: license);
      },
      child: Container(
        padding: context.geometry.mediumPadding,
        decoration: BoxDecoration(
          borderRadius: context.geometry.radiusMedium,
          color: context.colors.primaryLight,
        ),
        child: Row(
          children: [
            Expanded(
              child: BodyLarge(license.packageName, color: context.colors.onPrimary),
            ),
            context.geometry.spacingMedium.horizontalBox,
            Icon(Icons.chevron_right, color: context.colors.onPrimary),
          ],
        ),
      ),
    );
  }
}
