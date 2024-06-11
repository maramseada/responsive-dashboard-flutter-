
import 'package:dashboard/core/Utils/images.dart';

import 'package:flutter/cupertino.dart';

import '../Models/DrawerListViewItem.dart';
import 'drawer_list_view_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;

  final List<DrawerItem> items = [
     DrawerItem(title: 'Dashboard', image: AppImages.dashboardIcon),
     DrawerItem(
        title: 'My Transaction', image: AppImages.myTransactions),
     DrawerItem(title: 'Statistics', image: AppImages.statistics),
     DrawerItem(
        title: 'Wallet Account', image: AppImages.wallet),
     DrawerItem(
        title: 'My Investments', image: AppImages.myInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerListViewItem(
              drawerItem: items[index],
              isActiv: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}