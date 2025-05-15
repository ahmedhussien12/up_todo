import 'package:flutter/material.dart';
import 'package:up_todo/core/utils/app_texts.dart';

import '../../../../../core/utils/app_assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoarding();
  }

  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        // <=
        Navigator.pushReplacementNamed(context, 'OnBoarding');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo),
            SizedBox(height: 35),
            Text(
              AppTexts.appTitle,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 40
              ),
            ),
          ],
        ),
      ),
    );
  }
}
