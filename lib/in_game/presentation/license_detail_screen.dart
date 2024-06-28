import 'package:flutter/cupertino.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/core/widget/separated_column.dart';
import 'package:rummi_assistant/in_game/domain/model/license.dart';

class LicenseDetailScreen extends StatelessWidget {
  const LicenseDetailScreen({
    required this.license,
    super.key,
  });

  final License license;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      excludePadding: true,
      appBarTitle: license.packageName,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(context.geometry.spacingMedium),
        child: SeparatedColumn(
          spacing: context.geometry.spacingMedium,
          children: license.paragraphs
              .map(
                (paragraph) => Body(
                  paragraph.text,
                  textAlign: TextAlign.justify,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
