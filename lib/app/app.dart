import 'package:flutter/material.dart';

import '../core/theme/theme.dart';
import '../core/utils/app_texts.dart';
import '../features/auth/presentation/screens/on_boarding_screens/on_boarding_screen.dart';
import '../features/auth/presentation/screens/splash_screen/splash_screen.dart';
import '../features/task/presentation/screens/home_screen.dart';

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
        'Splash': (context) => SplashScreen(),
        'OnBoarding': (context) => OnBoardingScreen(),
        'home': (context) => HomeScreen(),
      },
      theme: getAppThemeData(),
      darkTheme: getAppDarkThemeData(),
      themeMode: ThemeMode.light,

      home: SplashScreen(),
    );
  }
}
