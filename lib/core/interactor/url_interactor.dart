import 'package:rummi_assistant/core/data/remote/url_launch_service.dart';

class UrlInteractor {
  UrlInteractor({required UrlLaunchService urlLaunchService}) : _urlLaunchService = urlLaunchService;


  final UrlLaunchService _urlLaunchService;

  Future<bool> openUrl(String url) => _urlLaunchService.openUrl(url);
}