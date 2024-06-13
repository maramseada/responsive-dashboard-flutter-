import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_size.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../Models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel item;
  final bool isSelected;
  const AllExpensesItem({super.key, required this.isSelected, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getResponsiveFontSize(context, fontSize: 200),
      padding:  EdgeInsets.all(getResponsiveFontSize(context, fontSize: 12),),
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? Colors.transparent : Color(AppColors.grayBorderColor)),
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? Color(AppColors.blueColor) : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getResponsiveFontSize(context, fontSize: 8),),
                decoration: BoxDecoration(shape: BoxShape.circle, color: isSelected ? const Color(0xff60BEF3) : Color(AppColors.grayCardColor)),
                child: SvgPicture.asset(
                  item.image,
                  width: getResponsiveFontSize(context, fontSize: 30),
                  color: isSelected ? Colors.white : Color(AppColors.blueColor),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: getResponsiveFontSize(context, fontSize: 20),
                color: isSelected ? Colors.white : Color(AppColors.blueColor),
              ),
            ],
          ),
          const Spacer(),
          Text(
            item.title,
            style: AppStyles.style60014(
              context: context,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: getResponsiveFontSize(context, fontSize: 5),),

          Text(
            item.date,
            style: AppStyles.style40014(
              context: context,
              color: isSelected ? Colors.white : Color(AppColors.grayText),
            ),
          ) ,
          SizedBox(height: getResponsiveFontSize(context, fontSize: 8),),
          Text(
            item.price,
            style: AppStyles.style60020(
              context: context,
              color: isSelected ? Colors.white : Color(AppColors.blueColor),
            ),
          )
        ],
      ),
    );
  }
}
