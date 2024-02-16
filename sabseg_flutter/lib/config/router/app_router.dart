import "package:go_router/go_router.dart";
import "package:sabseg_flutter/modules/auth/login/screens/login_screen.dart";


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen()
      )
  ]);