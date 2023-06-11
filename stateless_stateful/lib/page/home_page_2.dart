import 'dart:developer';

import 'package:flutter/material.dart';

import 'home_page.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});
  int esep2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('StatelessWidget'),
      ),
      body: Center(child: Text('${esep2}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          esep2++;
          print(esep2);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
