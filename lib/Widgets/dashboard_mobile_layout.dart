import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomDrawer(),
    );
  }
}
