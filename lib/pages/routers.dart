import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/home_responsive.dart';

class Routers {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>
            const HomePageResponsive(title: 'Home')..loadSEO(),
      ),
    ],
  );
}
