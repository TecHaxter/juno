import 'package:flutter/material.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';

class TickCard extends StatelessWidget {
  final String text;
  final String point;
  const TickCard({
    Key? key,
    required this.text,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      color: AppColors.theWhite,
      child: Row(
        children: [
          Container(
            width: 20.r,
            height: 20.r,
            decoration: BoxDecoration(
              color: AppColors.thePurple,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              Icons.check,
              size: 14.sp,
            ),
          ),
          sizedBoxWithWidth(16),
          Text(
            text,
            style: AppTextStyles.playfairDisplay.merge(
              AppTextStyles.text18w800Black,
            ),
          ),
          const Expanded(child: SizedBox()),
          Text(
            '$point ${AppStrings.points}',
            style: AppTextStyles.text14w800Black,
          )
        ],
      ),
    );
  }
}
