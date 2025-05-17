import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';
import '../../../../core/widgets/custom_text_filled.dart';

class AddTaskComponents extends StatefulWidget {
  const AddTaskComponents({super.key});

  @override
  State<AddTaskComponents> createState() => _AddTaskComponentsState();
}

class _AddTaskComponentsState extends State<AddTaskComponents> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          CustomTextFilled(
            hintText: AppTexts.titleHint,
            label: Text(
              AppTexts.title,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
                color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
              ),
            ),
          ),
          SizedBox(height: 24),
          CustomTextFilled(
            hintText: AppTexts.noteHint,
            label: Text(
              AppTexts.note,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
                color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
              ),
            ),
          ),
          SizedBox(height: 24),
          CustomTextFilled(
            hintText: DateFormat('yMd').format(selectedDate),
            suffixIcon: IconButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );

                setState(() {
                  selectedDate = pickedDate!;
                });
              },
              icon: Icon(Icons.calendar_month),
              color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
            ),
            label: Text(
              AppTexts.date,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
                color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
              ),
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                child: CustomTextFilled(
                  hintText: "09:33 PM",
                  suffixIcon: Icon(
                    Icons.alarm,
                    color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
                  ),
                  label: Text(
                    AppTexts.startTime,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 20,
                      color: AppColors.textColor.withAlpha(
                        (0.87 * 255).toInt(),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 150,
                child: CustomTextFilled(
                  hintText: "09:33 PM",
                  suffixIcon: Icon(
                    Icons.alarm,
                    color: AppColors.textColor.withAlpha((0.87 * 255).toInt()),
                  ),
                  label: Text(
                    AppTexts.endTime,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 20,
                      color: AppColors.textColor.withAlpha(
                        (0.87 * 255).toInt(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
