import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:up_todo/core/utils/app_assets.dart';
import 'package:up_todo/core/utils/app_texts.dart';

import '../../../../core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat('yMMMMd').format(DateTime.now()),
                style: Theme.of(
                  context,
                ).textTheme.displayLarge!.copyWith(fontSize: 24),
              ),
              SizedBox(height: 12),
              Text(
                'Today',
                style: Theme.of(
                  context,
                ).textTheme.displayLarge!.copyWith(fontSize: 24),
              ),
              SizedBox(height: 6),
              SizedBox(height: 110,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: AppColors.primaryColor,
                  selectedTextColor: Colors.white,
                  dayTextStyle: Theme.of(context).textTheme.displayMedium!,
                  dateTextStyle: Theme.of(context).textTheme.displayMedium!,
                  monthTextStyle: Theme.of(context).textTheme.displayMedium!,
                  onDateChange: (date) {
                  },
                ),
              ),
              SizedBox(height: 11),
              noTasksWidget(context),


            ],
          ),
        ),
      ),
    );
  }

  Column noTasksWidget(BuildContext context) {
    return Column(
              children: [

                Image.asset(AppAssets.noTasks),
                SizedBox(height: 10,),
                Text(AppTexts.noTaskTitle, style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20),),
                SizedBox(height: 10,),
                Text(AppTexts.noTaskSubTitle, style: Theme.of(context).textTheme.displayMedium,),
              ],
            );
  }
}
