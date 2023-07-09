import 'package:flutter/material.dart';
import 'package:game_test/components/test_page_app_bar_title.dart';
import 'package:game_test/components/test_slider.dart';
import 'package:game_test/components/variants.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/models/suroo.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key, required this.suroo}) : super(key: key);

  final List<Suroo> suroo;

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

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
          Text(
            widget.suroo[index].text,
            style: const TextStyle(
              fontSize: 32,
              height: 1.5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                  'assets/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
            jooptor: widget.suroo[index].jooptor,
            onTap: (value) {
              if (value == true) {
              } else {}
              ;
            },
          ),
        ],
      ),
    );
  }
}
