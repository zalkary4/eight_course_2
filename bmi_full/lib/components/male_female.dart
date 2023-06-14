import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/text_style.dart';
import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
    required this.isFemal,
  });

  final IconData icon;
  final String text;
  final bool isFemal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: !isFemal ? null : AppColor.choosenIcon,
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
