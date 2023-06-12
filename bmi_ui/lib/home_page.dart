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
      backgroundColor: const Color(0xff0a0f20),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0f20),
        title: const Text(
          'BMI calculator',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Text('data')),
          Expanded(child: Text('data')),
          Expanded(child: Text('data')),
          Container(
            height: 50,
            color: const Color(0xfff50d57),
            width: double.infinity,
            child: const Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  height: 0.8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
