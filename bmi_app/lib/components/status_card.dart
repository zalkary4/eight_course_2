import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: child,
      ),
    );
  }
}

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

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
