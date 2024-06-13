import 'package:dashboard/Models/DrawerListViewItem.dart';
import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../core/Utils/font_size.dart';

class DrawerListViewItem extends StatelessWidget {
  final DrawerItem drawerItem;
  final bool isActiv;
  const DrawerListViewItem({super.key, required this.drawerItem, required this.isActiv});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: getResponsiveFontSize(context, fontSize: 10), right: getResponsiveFontSize(context, fontSize: 10),  top: getResponsiveFontSize(context, fontSize: 10), ),
      padding: EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 10), ),
      child: Row(
        children: [
          SvgPicture.asset(drawerItem.image),
           SizedBox(width: getResponsiveFontSize(context, fontSize: 15), ),
          Text(drawerItem.title,
          style: isActiv? AppStyles.style60016(context: context, color:Color(AppColors.blueColor)):AppStyles.style40016(context: context, ),)
          ,
        ],
      ),
    );
  }
}
