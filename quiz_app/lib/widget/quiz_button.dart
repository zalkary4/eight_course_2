import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.isTrue, {super.key, required this.onPressed});
  final bool isTrue;
  final void Function(bool) onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isTrue ? Colors.green : Colors.red),
        onPressed: () => onPressed(isTrue),
        child: Text(
          isTrue ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 26, color: Colors.white),
        ),
      ),
    );
  }
}
