import 'package:flutter/material.dart';
import 'package:piano_app_2/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      // useMaterial3: true,
      // ),
      home: const HomePage(),
    );
  }
}
