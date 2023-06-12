import 'package:bmi_ui/utils/app_colors.dart';
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
        color: AppColor.backgroundColor,
        width: double.infinity,
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 0.8,
            ),
          ),
        ),
      ),
    );
  }
}
