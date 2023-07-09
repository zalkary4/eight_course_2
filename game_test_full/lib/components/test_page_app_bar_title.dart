import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle({
    super.key,
    required this.tuuraJoptor,
    required this.kataJoptor,
  });
  final int tuuraJoptor;
  final int kataJoptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$kataJoptor',
                  style: TextStyle(
                    color: AppColors.red,
                    fontSize: 16,
                  ),
                ),
                // Icon(
                //   Icons.tips_and_updates,
                //   color: AppColors.yellow,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '32',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(
                  Icons.add_circle,
                  color: AppColors.green,
                ),
              ],
            ),
          ),
        ),
        const Text('3'),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Icon(Icons.favorite, color: AppColors.red);
                },
              ),
            ),
            const SizedBox(width: 7),
            const Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
