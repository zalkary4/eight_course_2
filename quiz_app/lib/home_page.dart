import 'package:flutter/material.dart';
import 'package:quiz_app/widget/quiz_button.dart';

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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Кыргызстанда 7 область бар',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          QuizButton(true),
          QuizButton(false),
          Row(
            children: [
              SizedBox(),
              ResultIcon(true),
              ResultIcon(false),
            ],
          ),
        ],
      ),
    );
  }
}

class ResultIcon extends StatelessWidget {
  const ResultIcon(
    this.isTrue, {
    super.key,
  });
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Icon(
      isTrue ? Icons.close : Icons.close,
      color: isTrue ? Colors.red : Colors.red,
      size: 35,
    );
  }
}
