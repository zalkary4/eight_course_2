import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class WeightEight extends StatelessWidget {
  const WeightEight({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(
          text,
          style: AppTextStyle.greyTextStyle,
        ),
        Text(
          '$value',
          style: AppTextStyle.valueStyle,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(iconData: Icons.remove),
            SizedBox(width: 20),
            RemoveAddButton(iconData: Icons.add),
          ],
        ),
      ],
    );
  }
}

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    super.key,
    required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.button2Color,
      foregroundColor: AppColor.whiteText,
      onPressed: () {},
      child: Icon(iconData),
    );
  }
}
