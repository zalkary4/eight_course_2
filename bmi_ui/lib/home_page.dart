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
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Text('data')),
        ],
      ),
    );
  }
}
