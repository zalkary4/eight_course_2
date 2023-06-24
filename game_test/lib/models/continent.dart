import 'package:flutter/material.dart';
import 'package:game_test/constants/app_text.dart';

class Continent {
  Continent({
    required this.name,
    required this.icon,
    required this.color,
  });
  final String name;
  final String icon;
  final Color color;
}

final africa = Continent(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0xfffeef34),
);
