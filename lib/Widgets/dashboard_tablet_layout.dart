import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';

import 'all_expences_widget.dart';
import 'all_expenses_quick_invoice.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDrawer(),
        AllExpensesQuickInvoice()      ],
    );
  }
}
