import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/material.dart';

import '../core/Utils/font_size.dart';

class QuickInvoiceButtons extends StatelessWidget {
  final String title;
  final bool isSelected;
  const QuickInvoiceButtons({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(getResponsiveFontSize(context, fontSize: 15)),
      decoration: BoxDecoration(
        color: isSelected ? Color(AppColors.blueColor) : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title,
        style: AppStyles.style60016(
          context: context,
          color: isSelected ? Colors.white : Color(AppColors.blueColor),
        ),
      ),

    );
  }
}
