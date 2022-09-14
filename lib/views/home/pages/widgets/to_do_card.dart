import 'package:flutter/material.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/data/enums/enums.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';

class ToDoCard extends StatefulWidget {
  ToDoCard({Key? key}) : super(key: key);

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  ToDoEnum toDoEnum = ToDoEnum.getFit;

  void callBack(v) {
    setState(() {
      toDoEnum = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      color: AppColors.theWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.toDo,
            style: AppTextStyles.playfairDisplay.merge(
              AppTextStyles.text22w800Black,
            ),
          ),
          sizedBoxWithHeight(16),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    AppRadioButton(
                      text: AppStrings.getFIt,
                      value: ToDoEnum.getFit,
                      group: toDoEnum,
                      callBack: callBack,
                    ),
                    sizedBoxWithHeight(12),
                    AppRadioButton(
                      text: AppStrings.readMore,
                      value: ToDoEnum.readMore,
                      group: toDoEnum,
                      callBack: callBack,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    AppRadioButton(
                      text: AppStrings.lessStress,
                      value: ToDoEnum.lessStress,
                      group: toDoEnum,
                      callBack: callBack,
                    ),
                    sizedBoxWithHeight(12),
                    AppRadioButton(
                      text: AppStrings.cookingClass,
                      value: ToDoEnum.cookingClass,
                      group: toDoEnum,
                      callBack: callBack,
                    ),
                  ],
                ),
              ),
            ],
          ),
          sizedBoxWithHeight(24),
          Container(
            color: AppColors.thePurple,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.startNow,
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
