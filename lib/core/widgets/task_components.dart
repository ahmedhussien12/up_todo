import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_texts.dart';
import 'bottom_sheet_button.dart';

class TaskComponent extends StatelessWidget {
  const TaskComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder:
              (context) => Container(
            color: AppColors.bottomSheetBackground,
            padding: EdgeInsets.all(24),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomSheetButton(text: AppTexts.taskCompleted,color: AppColors.primaryColor,),
                BottomSheetButton(text: AppTexts.deleteTask,color: AppColors.deleteTaskColor,),
                BottomSheetButton(text: AppTexts.cancel,color: AppColors.primaryColor,),
              ],
            ),
          ),
        );
      },
      child: Container(
        height: 128,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.c1,
          borderRadius: BorderRadius.circular(16),
        ),
        // Row
        child: Row(
          children: [
            // column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text
                  Text(
                    'Task1',
                    style: Theme.of(
                      context,
                    ).textTheme.displayMedium!.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.alarm, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        '09:33 PM - 09:48 PM',
                        style: Theme.of(
                          context,
                        ).textTheme.displayMedium!.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Learn flutter',
                    style: Theme.of(
                      context,
                    ).textTheme.displayMedium!.copyWith(fontSize: 24),
                  ),
                ],
              ),
            ),
            Container(height: 75, width: 1, color: Colors.white),
            SizedBox(width: 10),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                AppTexts.toDo,
                style: Theme.of(
                  context,
                ).textTheme.displayMedium!.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
