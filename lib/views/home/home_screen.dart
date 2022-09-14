import 'package:flutter/material.dart';
import 'package:juno/utils/utils.dart';
import 'package:juno/views/common/common.dart';
import 'package:juno/views/home/pages/pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? controller;
  int prevPage = 0;

  List<List<double>> boxDefaultPosition = [];
  List<List<double>> boxRelPosition = [];

  final double _screenHeight = ScreenUtil.instance.height.toDouble();

  @override
  void initState() {
    super.initState();

    boxDefaultPosition = [
      [
        _screenHeight * 0.10,
        _screenHeight * 0.18,
        _screenHeight * 0.24,
        _screenHeight * 0.36,
        _screenHeight * 0.75,
      ],
      [
        _screenHeight * 0.10,
        _screenHeight * 0.18,
        _screenHeight * 0.32,
        _screenHeight * 0.45,
        _screenHeight * 0.75,
        _screenHeight * 0.85,
      ],
      [
        _screenHeight * 0.10,
        _screenHeight * 0.18,
        _screenHeight * 0.32,
        _screenHeight * 0.45,
        _screenHeight * 0.75,
      ],
    ];

    boxRelPosition = boxDefaultPosition
        .mapIndexed(
          (i, List<double> list) {
            if (i == 0) {
              return list;
            }
            return list
                .mapIndexed((index, double pos) {
                  return _screenHeight;
                })
                .toList()
                .cast<double>();
          },
        )
        .toList()
        .cast<List<double>>();

    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Stack(
            // color: Colors.amber,
            children: [
              SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  onPageChanged: (page) {
                    boxRelPosition[page] = boxRelPosition[page]
                        .mapIndexed((i, e) => boxDefaultPosition[page][i])
                        .toList();
                    boxRelPosition[prevPage] = boxDefaultPosition[prevPage]
                        .mapIndexed((i, e) =>
                            prevPage > page ? _screenHeight : -_screenHeight)
                        .toList();
                    prevPage = page;
                    setState(() {});
                  },
                  children: [
                    HomeAlpha(
                      itemPositions: boxRelPosition[0],
                    ),
                    HomeBeta(
                      itemPositions: boxRelPosition[1],
                    ),
                    HomeGamma(
                      itemPositions: boxRelPosition[2],
                    ),
                  ],
                ),
              ),
              const JunoAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
