import 'package:bookly_app/features/home/presentaion/views/home.dart';
import 'package:bookly_app/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: '/home', builder: (context, state) => HomeView()),
  ],
);
