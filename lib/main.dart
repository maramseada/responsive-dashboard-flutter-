import 'package:dashboard/Views/dashboard_view.dart';
import 'package:dashboard/Widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
