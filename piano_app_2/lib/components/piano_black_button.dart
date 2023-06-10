import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 11,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: SizedBox(
                width: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) {
                        Colors.red;
                      },
                    ),
                    overlayColor: MaterialStateProperty.resolveWith((states) {
                      return states.contains(MaterialState.pressed)
                          ? Colors.red
                          : null;
                    }),
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
            );
          },
        ),
      ),
    );
  }
}