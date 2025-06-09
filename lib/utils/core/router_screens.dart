import 'package:go_router/go_router.dart';
import 'package:musicapp/features/splash/presentation/view/splash_view.dart';

abstract class RouterScreens {
  static const splash = '/';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
