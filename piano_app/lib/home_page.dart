import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Piano',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          CustomCard(color: Colors.red),
          CustomCard(color: Colors.orange),
          CustomCard(color: Colors.yellow),
          CustomCard(color: Colors.green),
          CustomCard(color: Colors.blue),
          CustomCard(color: Colors.indigo),
          CustomCard(color: Colors.purple)
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // AudioCache(prefix: 'assets/do.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
