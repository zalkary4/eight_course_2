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
      appBar: AppBar(
        title: Text(AppText.gameTitle),
        backgroundColor: AppColors.blue,
      ),
      body: Center(),
    );
  }
}
