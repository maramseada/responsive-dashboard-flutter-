import 'package:dashboard/Widgets/quick_invoice_list_view.dart';
import 'package:dashboard/core/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/Utils/font_size.dart';
import '../core/Utils/font_styles.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

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
      children: [
        Row(
          children: [
            Text(
              'Quick Invoice',
              style: AppStyles.style60020(context: context),
            ),
            const Spacer(),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.grayCardColor),

            ),
            child: Center(
              child: Icon(Icons.add, color: Color(AppColors.blueColor),),
            ),
          )
          ],
        ),
        Text('Latest Transaction', style: AppStyles.style50016(context: context),),
        QuickInvoiceListView(),

      ],
    ),);
  }
}
