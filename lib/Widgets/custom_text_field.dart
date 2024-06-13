import 'package:flutter/material.dart';

import '../core/Utils/colors.dart';
import '../core/Utils/font_size.dart';
import '../core/Utils/font_styles.dart';


class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;
  final String? initialValue;

  const CustomTextField({
    super.key,
    required this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 10),),      decoration: BoxDecoration(
        color: Color(AppColors.grayCardColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child:   TextFormField(

        decoration: InputDecoration(
          hintText:initialValue,

          hintStyle: AppStyles.style40016(context: context, color: Color(AppColors.grayText)),
          border: InputBorder.none, // Remove the inner border to avoid conflict with outer border
          contentPadding:  EdgeInsets.symmetric(vertical: getResponsiveFontSize(context, fontSize: 20),), // Add vertical padding for better alignment
        ),
        onChanged: onChanged,

      ),
    );
  }
}