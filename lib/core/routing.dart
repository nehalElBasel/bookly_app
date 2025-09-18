import 'package:bookly_app/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => SplashView())],
);
