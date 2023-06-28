import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
  });

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
              onTap: () {},
              child: Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
