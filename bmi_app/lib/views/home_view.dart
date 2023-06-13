import 'package:bmi_app/components/calculate_button.dart';
import 'package:bmi_app/components/height.dart';
import 'package:bmi_app/components/male_female.dart';
import 'package:bmi_app/components/status_card.dart';
import 'package:bmi_app/components/weight_age.dart';
import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // double height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyle.titleStyle,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                      child: MaleFemale(icon: Icons.male, text: AppText.male)),
                  SizedBox(width: 20),
                  StatusCard(
                      child:
                          MaleFemale(icon: Icons.female, text: AppText.female)),
                ],
              ),
            ),
            SizedBox(height: 20),
            StatusCard(child: Height()),
            SizedBox(height: 5),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                      child: WeightEight(text: AppText.height, value: 60)),
                  SizedBox(width: 10),
                  StatusCard(child: WeightEight(text: AppText.age, value: 28)),
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
