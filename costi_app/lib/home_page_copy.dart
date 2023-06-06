import 'dart:math';

import 'package:flutter/material.dart';

class HomePageCopy extends StatefulWidget {
  const HomePageCopy({super.key});

  @override
  State<HomePageCopy> createState() => _HomePageCopyState();
}

class _HomePageCopyState extends State<HomePageCopy> {
  int dice1 = 1;
  int dice2 = 2;

  void change() {
    setState(() {
      dice1 = Random().nextInt(7);
      dice2 = Random().nextInt(7);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: Color(0xffff5353),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffff5353),
        title: const Text(
          'Task - 5',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            DiceImage(
              index: dice1 == 0 ? 1 : dice1,
              onTap: change,
            ),
            DiceImage(
              index: dice2 == 0 ? 1 : dice2,
              onTap: change,
            ),
          ],
        ),
      ),
    );
  }
}

class DiceImage extends StatelessWidget {
  const DiceImage({super.key, this.onTap, required this.index});

  final void Function()? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Image.asset('assets/dice$index.png'),
        ),
      ),
    );
  }
}
