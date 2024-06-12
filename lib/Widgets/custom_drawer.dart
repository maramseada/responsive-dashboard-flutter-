import 'package:dashboard/Widgets/drawer_list_view_item.dart';
import 'package:dashboard/core/Utils/images.dart';
import 'package:flutter/cupertino.dart';
import '../Models/DrawerListViewItem.dart';
import '../Models/user_info_model.dart';
import 'card_details.dart';
import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

  Size size = MediaQuery.sizeOf(context);
    return SizedBox(width: size.width*0.5,

    child: CustomScrollView(

      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
         SliverToBoxAdapter(

          child:Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child:  CardDetails(info:    UserInfoModel(
                image: 'assets/images/Group.png',
                title: 'Madrani Andi',
                subTitle: 'Madraniadi20@gmail'),),
          )
        ),
        const DrawerListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(
                  child: SizedBox(
                    height: 20,
                  )),
              DrawerListViewItem(
                drawerItem: DrawerItem(
                    title: 'Setting system', image: AppImages.settings), isActiv: false,
              ),
              DrawerListViewItem(
                drawerItem: DrawerItem(
                    title: 'Logout account', image: AppImages.logout),isActiv: false,
              ),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ],
    ),
    );
  }
}
