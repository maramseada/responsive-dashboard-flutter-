import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/Utils/font_size.dart';
import 'all_expenses_quick_invoice.dart';
import 'custom_drawer.dart';
import 'income_widget.dart';
import 'income_widget_small.dart';
import 'my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            AllExpensesQuickInvoice(),
            Container(
              margin: EdgeInsets.only(left: getResponsiveFontSize(context, fontSize: 15)),
              child:      MyCard(),
            ),
            IncomeWidgetSmall(),
          ],
        ),
      ),
    );
  }
}
