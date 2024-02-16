import "package:go_router/go_router.dart";
import "package:sabseg_flutter/modules/auth/login/screens/login_screen.dart";
import "package:sabseg_flutter/modules/auth/sign_up/screens/signup_screen.dart";


final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen()
      ),
    GoRoute(
      path: '/signup',
      name: SignupScreen.name,
      builder: (context, state) => SignupScreen()
      )
  ]);