import 'package:dashboard/Widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/Widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

import '../Widgets/adaptive_layout_widget.dart';
import '../Widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout:(context)=>  const DashBoardDeskTopLayout()),
    );
  }
}
