import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFilled extends StatelessWidget {
  const CustomTextFilled({
    super.key,
    required this.hintText,
    this.label,
    this.suffixIcon, this.controller,
  });

  final String hintText;
  final Widget? label;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      controller:controller ,
      readOnly: suffixIcon != null ? true : false,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.displayMedium,
        label: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: AppColors.textFilledFillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.textFilledBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.textFilledBorder),
        ),
      ),
    );
  }
}
