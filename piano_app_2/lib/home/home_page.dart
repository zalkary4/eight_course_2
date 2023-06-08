import 'package:flutter/material.dart';

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
              scrollDirection: Axis.horizontal,
              itemCount: 11,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          Colors.red;
                        },
                      ),
                      overlayColor: MaterialStateProperty.resolveWith((states) {
                        return states.contains(MaterialState.pressed)
                            ? Colors.greenAccent
                            : null;
                      }),
                    ),
                    onPressed: () {},
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'f3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
