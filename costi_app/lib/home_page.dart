import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = 1;
  int dice2 = 2;

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
            DiceImage(dice1),
            DiceImage(dice2),
          ],
        ),
      ),
    );
  }
}

class DiceImage extends StatefulWidget {
  DiceImage(this.index, {super.key});

  int index;

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            widget.index = Random().nextInt(6) + 1;
          });
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Image.asset('assets/dice${widget.index}.png'),
        ),
      ),
    );
  }
}
