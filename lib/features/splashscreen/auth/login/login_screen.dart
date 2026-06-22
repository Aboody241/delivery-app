import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tayar/core/theme/colors.dart';
import 'package:tayar/core/theme/text_style.dart';
import 'package:tayar/core/utils/routing/approuter.dart';
import 'package:tayar/shared/icons/icon_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(10),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const LightLogoWidget(height: 100, widght: 100),
                ),
              ),
              const Gap(30),
              Center(child: Text('Welcome Back', style: AppTextStyles.h2)),
              const Gap(8),
              Center(
                child: Text(
                  'Sign in to continue',
                  style: AppTextStyles.bodySecondary,
                ),
              ),
              const Gap(40),
              Text('Email', style: AppTextStyles.titleCard),
              const Gap(8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.background,
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: AppTextStyles.bodyLarge,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 11),
                    border: InputBorder.none,
                    hintText: 'Enter your Email Address',
                    hintStyle: AppTextStyles.hint,
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              const Gap(24),
              Text('Password', style: AppTextStyles.titleCard),
              const Gap(8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.background,
                ),
                child: TextField(
                  obscureText: true,
                  style: AppTextStyles.bodyLarge,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 11),

                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    hintStyle: AppTextStyles.hint,
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: AppColors.info,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Gap(32),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.nav);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text('Sign In', style: AppTextStyles.button),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: AppTextStyles.bodySecondary,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.register);
                    },
                    child: Text(
                      'Sign Up',
                      style: AppTextStyles.buttonSecondary.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
