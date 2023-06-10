import 'package:flutter/material.dart';
import 'package:quiz_app/widget/quiz_button.dart';
import 'package:quiz_app/widget/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Кыргызстанда 7 область барбы?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Spacer(),
            QuizButton(true),
            SizedBox(height: 20),
            QuizButton(false),
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
