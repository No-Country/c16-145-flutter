import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sabseg_flutter/modules/auth/login/screens/login_screen.dart';
import 'package:sabseg_flutter/modules/auth/sign_up/screens/signup_screen.dart';
import 'package:sabseg_flutter/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SignupScreen()
    );
  }
}



