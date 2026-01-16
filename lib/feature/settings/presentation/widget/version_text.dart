import 'package:flutter/widgets.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class VersionText extends StatefulWidget {
  const VersionText({super.key});

  @override
  State<VersionText> createState() => _VersionTextState();
}

class _VersionTextState extends State<VersionText> {
  String? _appVersion;
  String? _buildNumber;

  @override
  void initState() {
    super.initState();

    _initVersionInformation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BodySmall(
        color: context.colors.primary,
        context.localizations.settingsAppVersion(_appVersion ?? '', _buildNumber ?? ''),
        textAlign: TextAlign.center,
      ),
    );
  }

  Future<void> _initVersionInformation() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = info.version;
      _buildNumber = info.buildNumber;
    });
  }
}
