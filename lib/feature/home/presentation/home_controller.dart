import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final homeControllerProvider = Provider.autoDispose<HomeController>(
  (_) => HomeController(),
);

class HomeController {
  late final GoRouter _router = GetIt.instance.get();

  Future<void> onNewGame() async {
    // Navigate to players step maybe get initial data and pass via navigation
  }
}
