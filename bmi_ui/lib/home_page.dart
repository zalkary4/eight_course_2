import 'package:bmi_ui/components/calculate_button.dart';
import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_texts.dart';
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
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                StatusCard(),
              ],
            ),
          ),
          Expanded(child: Text('data')),
          Expanded(child: Text('data')),
          CalculateButton(),
        ],
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.male,
              size: 40,
            ),
            Text(
              AppText.male,
              style: TextStyle(
                color: AppColor.greyText,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
