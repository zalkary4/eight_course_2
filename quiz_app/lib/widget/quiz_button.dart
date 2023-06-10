import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.isTrue, {super.key});
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isTrue ? Colors.green : Colors.red),
        onPressed: () {},
        child: Text(
          isTrue ? 'Туура' : 'Туура эмес',
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
