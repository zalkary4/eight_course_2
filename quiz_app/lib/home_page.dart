import 'package:flutter/material.dart';

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
          const Text(
            'Кыргызстанда 7 область бар',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          QuizButton(true),
          QuizButton(false),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
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

class QuizButton extends StatelessWidget {
  const QuizButton(this.isTrue, {super.key});
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isTrue ? Colors.green : Colors.red),
        onPressed: () {},
        child: Text(
          isTrue ? 'Туура' : 'Туура эмес',
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
