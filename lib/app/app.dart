import 'package:flutter/material.dart';

import 'package:up_todo/core/theme/theme.dart';
import 'package:up_todo/core/utils/app_texts.dart';
import 'package:up_todo/features/auth/presentation/screens/on_boarding_screens/on_boarding_screen.dart';
import 'package:up_todo/features/auth/presentation/screens/splash_screen/splash_screen.dart';
import 'package:up_todo/features/task/presentation/screens/home_screen.dart';

import '../features/add_task/presentation/screens/add_task.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class UpTodo extends StatelessWidget {
  const UpTodo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: AppTexts.appTitle,
      debugShowCheckedModeBanner: false,
      routes: {
        'Splash': (context) => const SplashScreen(),
        'OnBoarding': (context) => const OnBoardingScreen(),
        'Home': (context) => const HomeScreen(),
        'AddTask': (context) => const AddTask(),
      },
      theme: getAppThemeData(),
      darkTheme: getAppDarkThemeData(),
      themeMode: ThemeMode.light,

      home: const SplashScreen(),
    );
  }
}
