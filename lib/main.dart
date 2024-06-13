import 'package:dashboard/Views/dashboard_view.dart';
import 'package:dashboard/Widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(
          enabled: true, builder: (context) => const DashBoardApp() // Wrap your app
      ),     );
 // runApp(const DashBoardApp());
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
