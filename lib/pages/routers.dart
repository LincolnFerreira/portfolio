import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/home_page.dart';

class Routers {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(title: 'sla')..loadSEO(),
      ),
    ],
  );
}
