import 'package:bookly_app/features/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeVew())],
);
