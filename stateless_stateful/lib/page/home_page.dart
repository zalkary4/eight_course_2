import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int esep = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget'), centerTitle: true),
      body: Center(child: Text('${esep}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          esep++;
          setState(() {});
          print(esep);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
