import 'package:flutter/material.dart';
import 'package:game_test/components/test_page_app_bar_title.dart';
import 'package:game_test/constants/app_color.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        elevation: 0,
        title: const TestPageAppBarTitle(),
      ),
      body: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
                overlayShape: SliderComponentShape.noOverlay,
                thumbShape: SliderComponentShape.noThumb),
            child: Slider(
              value: 3,
              onChanged: (value) {},
              min: 0,
              max: 10,
            ),
          ),
        ],
      ),
    );
  }
}
