import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/material.dart';

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
    return Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: AppTextStyle.greyTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
