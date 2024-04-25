import 'package:go_router/go_router.dart';
import 'package:linkyou/core/routing/routes.dart';
import 'package:linkyou/features/auth_feature/presentaion/screens/auth_screen.dart';
import 'package:linkyou/features/gallery_feature/presentaion/screens/users_gallery_screen.dart';
final router = GoRouter(
  initialLocation: AUTH_ROUTE,
  routes: [
    GoRoute(
      path: AUTH_ROUTE,
      builder: (context, state) => AuthScreen(),
      
    ),
    GoRoute(
      path: GALLERY_ROUTE,
      builder: (context, state) => UsersGalleryScreen(),
      
    ),
  ],
);
