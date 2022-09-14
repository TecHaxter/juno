import 'package:flutter/material.dart';
import 'package:juno/data/constants/app_colors.dart';
import 'package:juno/data/constants/app_text_styles.dart';
import 'package:juno/utils/utils.dart';

class YellowTextRoundBox extends StatelessWidget {
  final String text;
  const YellowTextRoundBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.theOrange,
        borderRadius: BorderRadius.circular(24.r),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyles.playfairDisplay.merge(
          AppTextStyles.text18w800Black,
        ),
      ),
    );
  }
}
