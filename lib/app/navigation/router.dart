import 'package:go_router/go_router.dart';
import 'package:rummi_assistant/home/presentation/home_screen.dart';

GoRouter buildRouter() => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
