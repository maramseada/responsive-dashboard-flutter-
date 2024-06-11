import 'package:dashboard/Models/DrawerListViewItem.dart';
import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class DrawerListViewItem extends StatelessWidget {
  final DrawerItem drawerItem;
  final bool isActiv;
  const DrawerListViewItem({super.key, required this.drawerItem, required this.isActiv});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          SvgPicture.asset(drawerItem.image),
          SizedBox(width: 15,),
          Text(drawerItem.title,
          style: isActiv? AppStyles.style60016(context: context, color:Color(AppColors.blueColor)):AppStyles.style40016(context: context, ),)
          ,
        ],
      ),
    );
  }
}
