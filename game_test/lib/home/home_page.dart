import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: const Text(
          AppText.gameTitle,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const Center(),
    );
  }
}
