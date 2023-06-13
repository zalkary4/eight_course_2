import 'dart:math';

import 'package:bmi_app/components/calculate_button.dart';
import 'package:bmi_app/components/status_card.dart';
import 'package:bmi_app/components/status_card2.dart';
import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyle.titleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Expanded(
              child: Row(
                children: [
                  StatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  StatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Card(
                color: AppColor.cardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppText.height,
                      style: AppTextStyle.greyTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${height.toInt()}',
                          style: AppTextStyle.valueStyle,
                        ),
                        const Text(
                          AppText.cm,
                          style: AppTextStyle.greyTextStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: SizedBox(
                        width: double.infinity,
                        child: CupertinoSlider(
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          onChangeStart: (value) {},
                          min: 0.0,
                          max: 250,
                          thumbColor: AppColor.buttonColor,
                          activeColor: AppColor.whiteText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Expanded(
              child: Row(
                children: [
                  StatusCard2(text: AppText.weight, value: 60),
                  SizedBox(width: 10),
                  StatusCard2(text: AppText.age, value: 28),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
