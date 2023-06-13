import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.height,
    required this.onChanged,
  });
  final int height;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: AppTextStyle.greyTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '$height',
              style: AppTextStyle.valueStyle,
            ),
            const Text(
              AppText.cm,
              style: AppTextStyle.greyTextStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: height.toDouble(),
              onChanged: onChanged,
              min: 0.0,
              max: 250,
              thumbColor: AppColor.buttonColor,
              activeColor: AppColor.whiteText,
            ),
          ),
        ),
      ],
    );
  }
}
