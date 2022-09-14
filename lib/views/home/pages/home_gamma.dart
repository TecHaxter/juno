import 'package:flutter/material.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';
import 'package:juno/views/home/pages/pages.dart';

class HomeGamma extends StatelessWidget {
  final List<double?> itemPositions;
  const HomeGamma({Key? key, required this.itemPositions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.instance.height;
    return Stack(
      alignment: Alignment.center,
      children: <AnimatedPos>[
        AnimatedPos(
          top: itemPositions[0] ?? screenHeight * 0.1,
          child: YellowTextRoundBox(text: AppStrings.forTeams),
        ),
        AnimatedPos(
          top: itemPositions[1] ?? screenHeight * 0.18,
          child: Text(
            AppStrings.employeeHappiness,
            style: AppTextStyles.text32w900Black,
            textAlign: TextAlign.center,
          ),
        ),
        AnimatedPos(
          top: itemPositions[2] ?? screenHeight * 0.24,
          right: 0,
          left: 0,
          child: SizedBox(
            width: double.maxFinite,
            child: Text(
              AppStrings.whenEmployeeFeels,
              style: AppTextStyles.text15w500Black,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        AnimatedPos(
          right: 0,
          left: 0,
          top: itemPositions[3] ?? screenHeight * 0.36,
          child: Image.asset(
            AppAssets.women,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
        AnimatedPos(
          top: itemPositions[4] ?? screenHeight * 0.75,
          right: 0,
          left: 0,
          child: ToDoCard(),
        ),
      ],
    );
  }
}
