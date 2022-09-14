import 'package:flutter/material.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';

class BookNowCard extends StatelessWidget {
  const BookNowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      color: AppColors.theWhite,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: AppColors.theBlack,
                padding: EdgeInsets.all(6.r),
                child: Column(
                  children: [
                    Text(
                      '80',
                      style: AppTextStyles.text16w600White,
                    ),
                    Text(
                      AppStrings.points,
                      style: AppTextStyles.text12w600White,
                    ),
                  ],
                ),
              ),
              sizedBoxWithWidth(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.deepTissueMassage,
                      style: AppTextStyles.text14w800Black,
                    ),
                    sizedBoxWithHeight(4),
                    Text(
                      AppStrings.tommorow('10:30'),
                      style: AppTextStyles.text14w500Black,
                    ),
                  ],
                ),
              )
            ],
          ),
          sizedBoxWithHeight(16),
          Container(
            color: AppColors.thePurple,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.bookNow,
                  style: AppTextStyles.text14w800Black,
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          )
        ],
      ),
    );
  }
}
