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
      appBar: AppBar(
        title: const Text('Calculater'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Text('Calc')),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    nomer: 1,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 2,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 3,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    nomer: 4,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 5,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 6,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    nomer: 7,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 8,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                  NumberButton(
                    nomer: 9,
                    biBerF: (value) {
                      print('maani $value');
                    },
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  const NumberButton({
    super.key,
    required this.nomer,
    required this.biBerF,
  });
  final int nomer;
  final void Function(int) biBerF;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(nomer);

        biBerF(nomer);
      },
      child: Text('$nomer'),
    );
  }
}
