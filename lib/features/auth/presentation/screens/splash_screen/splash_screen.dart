import 'package:flutter/material.dart';
import 'package:up_todo/core/database/cache/cache_helper.dart';
import 'package:up_todo/core/services/service_locator.dart';
import 'package:up_todo/core/utils/app_assets.dart';
import 'package:up_todo/core/utils/app_texts.dart';


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
    final bool isVisited = sl<CacheHelper>().getData(key: AppTexts.onBoardingKey) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        // <=

       isVisited ? Navigator.pushReplacementNamed(context, 'Home') : Navigator.pushReplacementNamed(context, 'OnBoarding');
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
            const SizedBox(height: 35),
            Text(
              AppTexts.appTitle,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
