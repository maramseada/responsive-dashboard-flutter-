import 'package:flutter/cupertino.dart';
import 'package:svg_flutter/svg.dart';
import '../Models/chart_data_model.dart';
import '../core/Utils/colors.dart';
import '../core/Utils/font_size.dart';
import '../core/Utils/font_styles.dart';
import '../core/Utils/images.dart';

class ChartData extends StatelessWidget {
  final ChartDataModel info;
  const ChartData({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppImages.dot,
                color: Color(info.color),
              ),
               SizedBox(
                width: getResponsiveFontSize(context, fontSize: 5),
              ),
              Text(
                info.title,
                style: AppStyles.style40014(context: context),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              info.percent,
              style: AppStyles.style50016(context: context, color: Color(AppColors.blueColor)),
            ),
          )
        ],
      ),
    );
  }
}
