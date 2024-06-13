import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';

import 'all_expences_widget.dart';
import 'all_expenses_quick_invoice.dart';
import 'income_widget.dart';
import 'my_card.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(
          flex: 1,
          child: CustomDrawer(),
        ),
        Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesQuickInvoice(),
                  Container(        margin: EdgeInsets.only(left: 15),
                    child:     MyCard(),),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: IncomeWidget(),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
