import 'package:bmi_app/components/calculate_button.dart';
import 'package:bmi_app/components/status_card.dart';
import 'package:bmi_app/components/status_card2.dart';
import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
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
                      style: TextStyle(
                        fontSize: 26,
                        color: AppColor.whiteText,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                            fontSize: 36,
                            color: AppColor.whiteText,
                          ),
                        ),
                        Text(
                          AppText.cm,
                          style: TextStyle(
                            height: 2,
                            color: AppColor.greyText,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: SizedBox(
                        width: double.infinity,
                        child: CupertinoSlider(
                          value: 180,
                          onChanged: (value) {},
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
