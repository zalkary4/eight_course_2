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
      body: Column(
        children: [
          const Expanded(
            child: Center(child: Text('do re mi fa')),
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
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(visible: false),
                          PianoBlackButton(),
                          PianoBlackButton(),
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
