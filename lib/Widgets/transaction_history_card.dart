import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/cupertino.dart';

import '../Models/transaction_history_model.dart';

class TransactionHistoryCard extends StatelessWidget {
  final TransactionHistoryModel info;
  const TransactionHistoryCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(AppColors.grayCardColor),
      ),
      child: Row(
        children: [
          Column(
      crossAxisAlignment: CrossAxisAlignment.start,      children: [
              Text(
                info.title,
                style: AppStyles.style60016(context: context),
              ),
              Text(
                info.date,
                style: AppStyles.style40016(context: context, color: Color(AppColors.grayText)),
              )
            ],
          ),
          const Spacer(),
          Text(
            info.price,
            style: AppStyles.style60020(context: context, color: Color(AppColors.greenColor)),
          )
        ],
      ),
    );
  }
}
