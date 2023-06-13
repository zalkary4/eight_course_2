import 'package:bmi_app/utils/app_colors.dart';
import 'package:bmi_app/utils/app_texts.dart';
import 'package:bmi_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: AppTextStyle.greyTextStyle,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '180',
              style: AppTextStyle.valueStyle,
            ),
            Text(
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
              value: 180,
              onChanged: (value) {},
              onChangeStart: (value) {},
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
