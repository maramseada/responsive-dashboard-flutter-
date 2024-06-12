import 'package:dashboard/Widgets/quick_invoice.dart';
import 'package:flutter/cupertino.dart';

import 'all_expences_widget.dart';

class AllExpensesQuickInvoice extends StatelessWidget {
  const AllExpensesQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return const SingleChildScrollView(
      child: Column(
        children: [
       AllExpensesWidget(),

          QuickInvoice(),

        ],
      ),
    );
  }
}
