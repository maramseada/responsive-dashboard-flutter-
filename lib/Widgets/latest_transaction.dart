import 'package:dashboard/Widgets/quick_invoice_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../core/Utils/font_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,      children: [
        Text('Latest Transaction', style: AppStyles.style50016(context: context),),
        const SizedBox(height: 20,),const QuickInvoiceListView(),
      ],
    );
  }
}
