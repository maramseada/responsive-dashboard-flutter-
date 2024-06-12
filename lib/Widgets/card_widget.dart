import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:svg_flutter/svg.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 420 / 215,

    child: Stack(
fit: StackFit.expand,
      children: [
        Container(decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(12),
            color: Color(AppColors.blueColor)
        ),),   SvgPicture.asset(AppImages.card),

      ],
    ),
    );
  }
}
