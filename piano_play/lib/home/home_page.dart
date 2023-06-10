import 'package:flutter/material.dart';
import 'package:piano_play/components/piano_black_button.dart';
import 'package:piano_play/components/piano_button.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Piano App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do re mi fa'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoWhiteButton('A'),
                        PianoWhiteButton('Ab'),
                        PianoWhiteButton('B'),
                        PianoWhiteButton('Bb'),
                        PianoWhiteButton('C'),
                        PianoWhiteButton('d'),
                        PianoWhiteButton('Dd'),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PianoBlackButton('E'),
                          PianoBlackButton('Eb'),
                          PianoBlackButton('F'),
                          PianoBlackButton('G', visible: false),
                          PianoBlackButton('G'),
                          PianoBlackButton('Gb'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
