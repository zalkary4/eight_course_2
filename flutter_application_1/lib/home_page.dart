import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
          CustomCard(color: Colors.red, nota: 'do'),
          CustomCard(color: Colors.orange, nota: 're'),
          CustomCard(color: Colors.yellow, nota: 'mi'),
          CustomCard(color: Colors.green, nota: 'fa'),
          CustomCard(color: Colors.blue, nota: 'sol'),
          CustomCard(color: Colors.indigo, nota: 'lya'),
          CustomCard(color: Colors.purple, nota: 'si')
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.color,
    required this.nota,
  });
  final Color color;
  final String nota;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(AssetSource('$nota.wav'));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
