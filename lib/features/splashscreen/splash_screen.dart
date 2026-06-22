import 'package:flutter/material.dart';
import 'package:tayar/core/utils/const_strings.dart';
import 'package:tayar/core/utils/routing/approuter.dart';
import 'package:tayar/shared/icons/icon_widget.dart';

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
        Navigator.pushNamed(context, AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          LightLogoWidget(height: 250, widght: 250,)
          ],
        ),
      ),
    );
  }
}
