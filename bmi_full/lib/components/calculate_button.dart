import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_texts.dart';
import 'package:bmi_full/utils/text_style.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        color: AppColor.buttonColor,
        width: double.infinity,
        child: const Center(
          child: Text(
            AppText.calculate,
            style: AppTextStyle.titleStyle,
          ),
        ),
      ),
    );
  }
}
