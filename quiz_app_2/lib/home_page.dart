import 'package:flutter/material.dart';
import 'package:quiz_app_2/model/quiz_model.dart';
import 'package:quiz_app_2/widget/quiz_button.dart';
import 'package:quiz_app_2/widget/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 6;
  void tecksher() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Quiz App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Spacer(),
            QuizButton(
              true,
              onPressed: (value) {
                print(value);
              },
            ),
            SizedBox(height: 20),
            QuizButton(
              false,
              onPressed: (value) {
                print(value);
              },
            ),
            SizedBox(height: 50),
            Row(
              children: [
                ResultIcon(true),
                ResultIcon(false),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
