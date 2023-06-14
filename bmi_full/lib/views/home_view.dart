import 'package:bmi_full/components/calculate_button.dart';
import 'package:bmi_full/components/height.dart';
import 'package:bmi_full/components/male_female.dart';
import 'package:bmi_full/components/status_card.dart';
import 'package:bmi_full/components/weight_age.dart';
import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_texts.dart';
import 'package:bmi_full/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // double height = 180;
  bool isFemale = false;
  int height = 180;
  int weight = 60;
  int age = 28;

  /////////
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        isFemale = false;
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.male,
                      text: AppText.male,
                      isFemal: !isFemale,
                    ),
                  )),
                  const SizedBox(width: 20),
                  StatusCard(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        isFemale = true;
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.female,
                      text: AppText.female,
                      isFemal: isFemale,
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 20),
            StatusCard(
                child: Height(
              height: height,
              onChanged: (val) {
                setState(() {
                  height = val.toInt();
                });
              },
            )),
            SizedBox(height: 5),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightEight(
                      text: AppText.height,
                      value: weight,
                      add: (c) {
                        setState(() {
                          weight = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          weight = c;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  StatusCard(
                    child: WeightEight(
                      add: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                      text: AppText.age,
                      value: age,
                    ),
                  ),
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
