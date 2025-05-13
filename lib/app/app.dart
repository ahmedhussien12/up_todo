import 'package:flutter/material.dart';
import 'package:up_todo/core/utils/app_assets.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_texts.dart';

class UpTodo extends StatelessWidget {
  const UpTodo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.appTitle,
      debugShowCheckedModeBanner: false,


      home: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(child: Image.asset(AppAssets.logo),),
      ),
    );
  }
}
