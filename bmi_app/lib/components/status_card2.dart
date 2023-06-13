import 'package:bmi_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 36,
                color: AppColor.whiteText,
              ),
            ),
            Text(
              '$value',
              style: TextStyle(
                fontSize: 36,
                color: AppColor.whiteText,
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
