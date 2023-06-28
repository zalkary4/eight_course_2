import 'package:flutter/material.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/models/suroo.dart';

class Continent {
  Continent({
    required this.name,
    required this.icon,
    required this.color,
    this.suroo,
  });
  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

final africa = Continent(
  name: AppText.africa,
  icon: 'africa',
  color: const Color(0xfffeef34),
  suroo: asiaQuestions,
);
final asia = Continent(
  name: AppText.asia,
  icon: 'asia',
  color: Color(0xfff08180),
);
final europe = Continent(
  name: AppText.europe,
  icon: 'europe',
  color: const Color(0xff81a2fd),
);
final nAmerica = Continent(
  name: AppText.northAmerica,
  icon: 'north_america',
  color: const Color(0xfffeb000),
);
final sAmerica = Continent(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: const Color(0xffe5a9e4),
);
final australia = Continent(
  name: AppText.australia,
  icon: 'australia',
  color: const Color(0xff6bf782),
);

List<Continent> continents = [
  europe,
  asia,
  nAmerica,
  sAmerica,
  africa,
  australia
];
