import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    super.key,
    this.visible = true,
  });
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        height: 150,
        width: 63,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  // Colors.red;
                },
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? Colors.red
                      : null;
                },
              ),
            ),
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
        ),
      ),
    );
  }
}
