import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_size.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/cupertino.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all( getResponsiveFontSize(context, fontSize: 10)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Color(AppColors.grayCardColor),

      ),
      child: Row(
        children: [
ClipOval(child: Image.asset('assets/images/Group.png'),),
          SizedBox(width: getResponsiveFontSize(context, fontSize: 10),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lekan Okeowo', style: AppStyles.style60016(context: context),),
              Text('demo@gmail.com', style: AppStyles.style40012(context: context),),
            ],
          )
        ],
      ),
    );
  }
}
