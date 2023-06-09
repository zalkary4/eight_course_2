import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/models/suroo.dart';

class Variants extends StatelessWidget {
  Variants({
    required this.jooptor,
    required this.onTap,
    super.key,
  });
  final List<Joop> jooptor;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.inActive,
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                child: Text(
                  jooptor[index].text,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
