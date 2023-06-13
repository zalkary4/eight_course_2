import 'package:bmi_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle greyTextStyle =
      TextStyle(fontSize: 20, color: AppColor.greyText);
  static const TextStyle cmStyle =
      TextStyle(height: 2, color: AppColor.greyText, fontSize: 18);
  static const TextStyle valueStyle = TextStyle(
      fontSize: 26, color: AppColor.inactiveColor, fontWeight: FontWeight.w700);
  static const TextStyle titleStyle =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w700, height: 0.3);
}
