import 'package:flutter/material.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';

class AppRadioButton extends StatelessWidget {
  final dynamic value;
  final dynamic group;
  final Function(dynamic) callBack;
  final String text;
  const AppRadioButton({
    Key? key,
    required this.text,
    required this.value,
    required this.group,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.r,
          height: 20.r,
          child: Radio(
            value: value,
            groupValue: group,
            activeColor: AppColors.theBlack,
            onChanged: callBack,
          ),
        ),
        sizedBoxWithWidth(8),
        Text(
          text,
          style: AppTextStyles.text14w800Black,
        ),
      ],
    );
  }
}
