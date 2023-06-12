import 'package:bmi_app/components/calculate_button.dart';
import 'package:bmi_app/components/status_card.dart';
import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  StatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Card(
                color: AppColor.cardColor,
                child: Column(
                  children: [
                    Text(AppText.height),
                    Row(
                      children: [
                        Text('180'),
                        Text(AppText.cm),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  StatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  StatusCard(icon: Icons.female, text: AppText.female),
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
