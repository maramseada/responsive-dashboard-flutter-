import 'package:flutter/cupertino.dart';

import '../core/Utils/font_styles.dart';
import 'custom_text_field.dart';

class QuickInvoiceTextFieldDetails extends StatelessWidget {
  final
   String title;
  final String textFieldTitle;
  const QuickInvoiceTextFieldDetails({super.key, required this.title, required this.textFieldTitle});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           title,
            style: AppStyles.style50016(context: context),
          ),
          const SizedBox(height: 10,),
          CustomTextField(
            onChanged: (String value) {},
            initialValue: textFieldTitle,
          ),
        ],
      ),
    );
  }
}
