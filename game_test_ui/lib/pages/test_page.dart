import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Row(
                  children: [
                    Icon(Icons.tips_and_updates),
                    Text('32'),
                    Icon(Icons.add_circle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
