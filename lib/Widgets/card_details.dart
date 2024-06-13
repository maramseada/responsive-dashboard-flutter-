import 'package:dashboard/Models/user_info_model.dart';
import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_size.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/cupertino.dart';

class CardDetails extends StatelessWidget {
  final UserInfoModel info;
  const CardDetails({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getResponsiveFontSize(context, fontSize: 10)),
      margin:  EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 5),),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Color(AppColors.grayCardColor),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(info.image),
          ),
          SizedBox(
            width: getResponsiveFontSize(context, fontSize: 10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info.title,
                style: AppStyles.style60016(context: context),
              ),
              Text(
                info.subTitle,
                style: AppStyles.style40012(context: context),
              ),
            ],
          )
        ],
      ),
    );
  }
}
