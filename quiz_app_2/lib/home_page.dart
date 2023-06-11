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
  int index = 0;
  List jooptor = <bool>[];
  void tecksher(bool value1) {
    if (quizzes[index].answer == value1) {
      jooptor.add(true);
    } else {
      jooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        index = 0;
        jooptor.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Spacer(),
            QuizButton(
              true,
              onPressed: (value) {
                tecksher(value);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              false,
              onPressed: (value) {
                tecksher(value);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: jooptor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int i) {
                  return jooptor[i]
                      ? const ResultIcon(true)
                      : const ResultIcon(false);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
