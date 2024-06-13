import 'package:dashboard/core/Utils/colors.dart';
import 'package:dashboard/core/Utils/font_styles.dart';
import 'package:dashboard/core/Utils/images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../core/Utils/font_size.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding:  EdgeInsets.all(getResponsiveFontSize(context, fontSize: 15),),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(AppColors.blueColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name card',
                          style: AppStyles.style40016(context: context, color: Colors.white),
                        ),
                        Text(
                          'Syah Bandi',
                          style: AppStyles.style50020(context: context, color: Colors.white),
                        )
                      ],
                    ),
                    SvgPicture.asset(AppImages.gallery),
                  ],
                ),
                const Spacer(),
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.style40016(context: context, color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.style50016(context: context, color: Colors.white),
                )
              ],
            ),
          ),
          SvgPicture.asset(AppImages.card),
        ],
      ),
    );
  }
}
