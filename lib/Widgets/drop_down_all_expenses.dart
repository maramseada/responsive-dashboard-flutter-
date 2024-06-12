import 'package:flutter/material.dart';

import '../core/Utils/colors.dart';
import '../core/Utils/font_styles.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  // Define a list of items for the dropdown
  final List<String> _dropdownItems = ['Monthly', 'Weekly', 'Daily'];

  // Define the initial value
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Color(AppColors.grayBorderColor), width: 1)),
      child: DropdownButton<String>(
        value: _selectedItem,
        underline: const SizedBox(),
        items: _dropdownItems.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: AppStyles.style50016(context: context),
            ),
          );
        }).toList(),

        hint: Text(_dropdownItems[0]),
        onChanged: (String? newValue) {
          setState(() {
            _selectedItem = newValue;
          });
        },

        // Customize the dropdown style
        style: AppStyles.style60016(context: context),        dropdownColor: Colors.white,
        icon: Transform.rotate(
          angle:-1.57079633 * 5,
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            weight: 1,
          ),
        ),
        isExpanded: true, // Make dropdown expand to full width
      ),
    );
  }
}
