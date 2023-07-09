import 'package:flutter/material.dart';
import 'package:game_test/components/test_page_app_bar_title.dart';
import 'package:game_test/components/test_slider.dart';
import 'package:game_test/components/variants.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/models/suroo.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key, required this.suroo}) : super(key: key);

  final List<Suroo> suroo;

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        elevation: 0,
        title: TestPageAppBarTitle(
          kataJoptor: kataJooptor,
          tuuraJoptor: tuuraJooptor,
        ),
      ),
      body: Column(
        children: [
          const TestSlider(),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(
              fontSize: 32,
              height: 1.5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                  'assets/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('End of the test'),
                    content: Text(
                      'Tuura: $tuuraJooptor\ kata: $kataJooptor',
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          index = 0;
                          kataJooptor = 0;
                          tuuraJooptor = 0;
                          Navigator.pop(context);
                        },
                        child: Text('Cansel'),
                      )
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(
                  () {
                    index++;
                  },
                );
              }
              // if (widget.suroo[index] == widget.suroo.last) {}
            },
          ),
        ],
      ),
    );
  }
}
