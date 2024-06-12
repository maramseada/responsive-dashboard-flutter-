import 'package:dashboard/Models/transaction_history_model.dart';
import 'package:dashboard/Widgets/transaction_history_card.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../core/Utils/colors.dart';
import 'card_widget.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<TransactionHistoryModel>  listTransaction = [

      TransactionHistoryModel(title: 'Cash Withdrawal', price: '20,129', date: '13 Apr, 2022 ')
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Card',
            style: AppStyles.style60020(context: context),
          ),
          const SizedBox(
            height: 20,
          ),
          const CardWidget(),
          const SizedBox(
            height: 10,
          ),
          DotsIndicator(
            dotsCount: 3,
            onTap: (index) {},
            decorator: DotsDecorator(
              color: Colors.grey,
              activeColor: Color(AppColors.blueColor),
              size: const Size.square(12.0),
              activeSize: const Size(45.0, 12.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          const Divider(),
          Row(
            children: [
              Text(
                'Transaction History',
                style: AppStyles.style60020(context: context),
              ),
              Spacer(),
              Text(
                'See all',
                style: AppStyles.style50016(context: context, color: Color(AppColors.blueColor)),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text(
            '13 April 2022',
            style: AppStyles.style50016(context: context, color: Color(AppColors.grayText)),
          ),
          SizedBox(height: 20,),

          TransactionHistoryCard(info: listTransaction[0],),
          SizedBox(height: 10,),
          TransactionHistoryCard(info: listTransaction[0],),
          SizedBox(height: 10,),
          TransactionHistoryCard(info: listTransaction[0],),
        ],
      ),
    );
  }
}
