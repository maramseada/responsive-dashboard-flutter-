import 'package:dashboard/Widgets/drawer_list_view_item.dart';
import 'package:dashboard/core/Utils/font_size.dart';
import 'package:dashboard/core/Utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/DrawerListViewItem.dart';
import '../Models/user_info_model.dart';
import '../core/Utils/colors.dart';
import 'card_details.dart';
import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.6,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
            child: SizedBox(
              height: getResponsiveFontSize(context, fontSize: 40),
            ),
          ),
          SliverToBoxAdapter(
              child: CardDetails(
                info: UserInfoModel(image: 'assets/images/Group.png', title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
              )),
          const DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                 Expanded(
                    child: SizedBox(
                  height: getResponsiveFontSize(context, fontSize: 20),
                )),
                DrawerListViewItem(
                  drawerItem: DrawerItem(title: 'Setting system', image: AppImages.settings),
                  isActiv: false,
                ),
                SizedBox(
                  height: getResponsiveFontSize(context, fontSize: 10),
                ),  DrawerListViewItem(
                  drawerItem: DrawerItem(title: 'Logout account', image: AppImages.logout),
                  isActiv: false,
                ),
                 SizedBox(
                  height: getResponsiveFontSize(context, fontSize: 30),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
