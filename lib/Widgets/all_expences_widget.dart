import 'package:dashboard/core/Utils/font_size.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:dashboard/core/Utils/images.dart';
import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';
import 'drop_down_all_expenses.dart';

class AllExpensesWidget extends StatefulWidget {
  const AllExpensesWidget({super.key});

  @override
  State<AllExpensesWidget> createState() => _AllExpensesWidgetState();
}

final items = [
  AllExpensesItemModel(image: AppImages.balance, title: 'Balance', date: 'April 2022', price: r'$20,129'),
  AllExpensesItemModel(image: AppImages.cardRecieve, title: 'Income', date: 'April 2022', price: r'$20,129'),
  AllExpensesItemModel(image: AppImages.cardSend, title: 'Expenses', date: 'April 2022', price: r'$20,129'),
];

class _AllExpensesWidgetState extends State<AllExpensesWidget> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(20),
      width: size.width * 0.48,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'All Expenses',
                style: AppStyles.style60020(context: context),
              ),
              const Spacer(),
              SizedBox(
                width: getResponsiveFontSize(context, fontSize: 120),
                child: const MyDropdown(),
              )
            ],
          ),
          SizedBox(height: 12,),

          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  child: AllExpensesItem(
                    isSelected: selected == 1,
                    item: items[0],
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  child: AllExpensesItem(
                    isSelected: selected == 2,
                    item: items[1],
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = 3;
                    });
                  },
                  child: AllExpensesItem(
                    isSelected: selected == 3,
                    item: items[2],
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
