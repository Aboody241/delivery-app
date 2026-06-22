
import 'package:flutter/material.dart';
import 'package:tayar/features/splashscreen/auth/login/login_screen.dart';
import 'package:tayar/features/splashscreen/auth/register/register_screen.dart';
import 'package:tayar/features/splashscreen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String mainNav = '/main';
  static const String login = '/login';
  static const String register = '/register';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );

      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      case register:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const RegisterScreen(),
        );


      //==============================================================================
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Scaffold(),
        );
    }
  }
}
