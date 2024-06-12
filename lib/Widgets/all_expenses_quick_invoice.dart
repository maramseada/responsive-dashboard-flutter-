import 'package:dashboard/Widgets/quick_invoice.dart';
import 'package:flutter/cupertino.dart';

import 'all_expences_widget.dart';

class AllExpensesQuickInvoice extends StatelessWidget {
  const AllExpensesQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
SizedBox(
       width: size.width * 0.48,
child: AllExpensesWidget(),
),
        QuickInvoice(),

      ],
    );
  }
}
