import 'package:url_launcher/url_launcher.dart';

class UrlLaunchService {
  Future<bool> _canLaunch(Uri uri) {
    return canLaunchUrl(uri);
  }

  Future<bool> openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await _canLaunch(uri)) {
      return launchUrl(uri);
    } else {
      return false;
    }
  }
}
