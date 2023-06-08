import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton(this.color, {super.key});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              color;
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
  }
}
