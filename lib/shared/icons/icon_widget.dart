import 'package:flutter/material.dart';
import 'package:tayar/core/utils/const_strings.dart';

class LightLogoWidget extends StatelessWidget {
  const LightLogoWidget({super.key,required this.height,required this.widght});

  final double height;
  final double widght;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widght,
      child: Image.asset(AppStrings.lightLogo),
    );
  }
}
class DarkLogoWidget extends StatelessWidget {
  const DarkLogoWidget({super.key,required this.height,required this.widght});

  final double height;
  final double widght;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widght,
      child: Image.asset(AppStrings.darkLogo),
    );
  }
}
