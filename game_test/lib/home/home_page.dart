// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/models/continent.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
        title: const Text(
          AppText.gameTitle,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(14),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContinentCard(item: continents[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    super.key,
    required this.item,
  });

  final Continent item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            item.name,
            style: const TextStyle(fontSize: 22),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/icons/continents/${item.icon}.svg',
              color: item.color,
            ),
          ),
        ],
      ),
    );
  }
}
