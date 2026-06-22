import 'package:flutter/material.dart';
import 'package:tayar/core/utils/const_strings.dart';
import 'package:tayar/features/splashscreen/auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          width: 250,
          height: 250,
          child: Image.asset(AppStrings.lightLogo),
        )
      ],),),
    );
  }
}