import 'package:dashboard/Widgets/pie_chart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/chart_data_model.dart';
import '../core/Utils/colors.dart';
import '../core/Utils/font_size.dart';
import '../core/Utils/font_styles.dart';
import 'chart_data.dart';
import 'drop_down_all_expenses.dart';

class IncomeWidgetSmall extends StatelessWidget {
  const IncomeWidgetSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(getResponsiveFontSize(context, fontSize: 15), ),
      margin:  EdgeInsets.only(left: getResponsiveFontSize(context, fontSize: 15) , right: getResponsiveFontSize(context, fontSize: 20), bottom: getResponsiveFontSize(context, fontSize: 15), ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'All Expenses',
                style: AppStyles.style60020(context: context),
              ),
              const Spacer(),
              SizedBox(
                width: getResponsiveFontSize(context, fontSize: 130),
                child: const MyDropdown(),
              )
            ],
          ),
           SizedBox(
            height: getResponsiveFontSize(context, fontSize: 20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: getResponsiveFontSize(context, fontSize: 120),
                width: getResponsiveFontSize(context, fontSize: 120),
                child: const IncomeChart(),
              ),
               SizedBox(
                height: getResponsiveFontSize(context, fontSize: 40) ,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChartData(
                    info: ChartDataModel(title: 'Design service', percent: '40%', color: AppColors.semiDarkBlueColor),
                  ),
                  ChartData(
                    info: ChartDataModel(title: 'Design product', percent: '25%', color: AppColors.blueColor),
                  ),
                  ChartData(
                    info: ChartDataModel(title: 'Product royalti', percent: '20%', color: AppColors.darkBlueColor),
                  ),
                  ChartData(
                    info: ChartDataModel(title: 'Other', percent: '22%', color: AppColors.grayChart),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
