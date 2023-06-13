import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:bmi_app/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('pusshed');
      },
      child: Container(
        height: 50,
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
