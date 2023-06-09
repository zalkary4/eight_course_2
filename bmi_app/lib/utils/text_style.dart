import 'package:bmi_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle greyTextStyle = TextStyle(
    fontSize: 28,
    color: AppColor.greyText,
  );
  static const TextStyle cmStyle = TextStyle(
    fontSize: 18,
    color: AppColor.greyText,
    // height: -7,
  );
  static const TextStyle valueStyle = TextStyle(
    fontSize: 65,
    color: AppColor.whiteText,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle titleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 0.3,
  );
}
