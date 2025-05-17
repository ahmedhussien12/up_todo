import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_texts.dart';

class NoTask extends StatelessWidget {
  const NoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(AppAssets.noTasks),
          SizedBox(height: 10),
          Text(
            AppTexts.noTaskTitle,
            style: Theme.of(
              context,
            ).textTheme.displayMedium!.copyWith(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            AppTexts.noTaskSubTitle,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
