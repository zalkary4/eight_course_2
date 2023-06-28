import 'package:flutter/material.dart';
import 'package:game_test/components/test_page_app_bar_title.dart';
import 'package:game_test/components/test_slider.dart';
import 'package:game_test/components/variants.dart';
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
          const TestSlider(),
          const Text(
            'Bangkok',
            style: TextStyle(
              fontSize: 32,
              height: 1.5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/capitals/bishkek.jpeg'),
            ),
          ),
          const Variants(),
        ],
      ),
    );
  }
}
