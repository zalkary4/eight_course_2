import 'package:flutter/material.dart';
import 'package:weather_app1/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.icon,
    super.key,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      color: AppColors.white,
      iconSize: 50,
      icon: Icon(icon),
    );
  }
}
