import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:dashboard/core/Utils/font_size.dart';
import 'package:flutter/cupertino.dart';

import 'all_expenses_quick_invoice.dart';
import 'income_desktop.dart';
import 'income_widget.dart';
import 'my_card.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(
          flex: 2,
          child: CustomDrawer(),
        ),
        Flexible(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesQuickInvoice(),
                ],
              ),
            )),
        Flexible(
            flex: 3,

            child:SingleChildScrollView(
              child:  Column(
                children: [
           Container(
             margin: EdgeInsets.only(top: getResponsiveFontSize(context, fontSize: 15)),
             child:        MyCard(),
           ),
                  IncomeWidgetDesktop(),
                ],
              ),
            ))
      ],
    );
  }
}
