import 'package:bmi_app/utils/app_colors.dart';
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
