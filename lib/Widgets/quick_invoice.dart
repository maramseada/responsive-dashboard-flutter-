import 'package:dashboard/Widgets/quick_invoice_buttons.dart';
import 'package:dashboard/Widgets/quick_invoice_text_field_details.dart';
import 'package:dashboard/core/Utils/colors.dart';
import 'package:flutter/material.dart';
import '../core/Utils/font_styles.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatefulWidget {
  const QuickInvoice({super.key});

  @override
  State<QuickInvoice> createState() => _QuickInvoiceState();
}

class _QuickInvoiceState extends State<QuickInvoice> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Quick Invoice',
                style: AppStyles.style60020(context: context),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(AppColors.grayCardColor),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Color(AppColors.blueColor),
                  ),
                ),
              )
            ],
          ),
          const LatestTransaction(),
          const Divider(),
          const SizedBox(height: 20),
          const Row(
            children: [
              QuickInvoiceTextFieldDetails(
                title: 'Customer name',
                textFieldTitle: 'Type customer name',
              ),

              SizedBox(width: 10), // Add spacing between the two columns
              QuickInvoiceTextFieldDetails(
                title: 'Customer Email',
                textFieldTitle: 'Type customer Email',
              ),
            ],
          ),
          const SizedBox(height: 20), // Add spacing between the two columns
          const Row(
            children: [
              QuickInvoiceTextFieldDetails(
                title: 'Item name',
                textFieldTitle: 'Type customer Item',
              ),

              SizedBox(width: 10), // Add spacing between the two columns
              QuickInvoiceTextFieldDetails(
                title: 'Item mount',
                textFieldTitle: 'USD',
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
      Expanded(child:       GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = 1;
          });
        },
        child: QuickInvoiceButtons(
          title: 'Add more details',
          isSelected: selectedIndex == 1,
        ),
      ),),
     const SizedBox(width: 10,),
     Expanded(child:        GestureDetector(
       onTap: () {
         setState(() {
           selectedIndex = 2;
         });
       },
       child: QuickInvoiceButtons(
         title: 'Send Money',
         isSelected: selectedIndex == 2,
       ),
     ))
          ])
        ],
      ),
    );
  }
}
