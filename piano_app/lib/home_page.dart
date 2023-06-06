import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 60, 157, 236),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 5, 5, 248),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
