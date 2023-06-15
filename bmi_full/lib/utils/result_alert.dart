import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_texts.dart';
import 'package:bmi_full/utils/text_style.dart';
import 'package:flutter/material.dart';

// Future<void> showMyDialog(BuildContext context, String text) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) => AlertDialog(
//       backgroundColor: AppColor.backgroundColor,
//       title: const Center(
//         child: Text(
//           AppText.appBarTitle,
//           style: AppTextStyle.resTextStyle,
//         ),
//       ),
//       content: Text(
//         text,
//         style: AppTextStyle.resTextStyle,
//         textAlign: TextAlign.center,
//       ),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text(AppText.backButton),
//         )
//       ],
//     ),
//   );
// }

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColor.backgroundColor,
        title: const Center(child: Text(AppText.appBarTitle)),
        content: Text(
          text,
          style: AppTextStyle.resTextStyle,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(AppText.backButton),
          ),
        ],
      );
    },
  );
}
