import 'package:flutter/material.dart';
import 'package:piano_app_2/components/piano_black_button.dart';
import 'package:piano_app_2/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Piano App'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(child: Text('do re mi fa')),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                PianoWhiteButton(),
                PianoBlackButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
