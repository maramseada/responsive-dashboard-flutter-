import 'package:dashboard/core/Utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(

        centerSpaceRadius: 40,
        sectionsSpace: 0,
        sections: [
      PieChartSectionData(
        showTitle: false,
        value: 20,
        color: Color(AppColors.grayChart),
      ),
      PieChartSectionData(
        showTitle: false,
        value: 22,
        color: Color(AppColors.darkBlueColor),
      ),
      PieChartSectionData(
        showTitle: false,
        value: 25,
        color: Color(AppColors.blueColor),
      ),
      PieChartSectionData(
        showTitle: false,
        value: 40,
        color: Color(AppColors.semiDarkBlueColor),
      ),
    ]);
  }
}
