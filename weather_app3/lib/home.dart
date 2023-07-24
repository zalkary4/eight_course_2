import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/components/custom_icon_button.dart';
import 'package:weather_app1/constants/api_const.dart';
import 'package:weather_app1/constants/app_colors.dart';
import 'package:weather_app1/constants/app_text.dart';
import 'package:weather_app1/constants/app_text_styles.dart';

import 'models/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Future<Weather?>? fetchData() async {
    Future.delayed(const Duration(seconds: 3));
    final dio = Dio();
    final response = await dio.get(ApiConts.adress);
    if (response.statusCode == 200) {
      final Weather weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        city: response.data['name'],
        temp: response.data['main']['temp'],
        country: response.data['sys']['country'],
      );
      return weather;
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    log('max W-------${MediaQuery.of(context).size.width}');
    log('max H-------${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.appBarTitle, style: AppTextStyle.appBar),
        backgroundColor: AppColors.white,
        centerTitle: true,
      ),
      body: FutureBuilder<Weather?>(
        future: fetchData(),
        builder: (context, joop) {
          if (joop.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (joop.connectionState == ConnectionState.none) {
            return const Text('No connection');
          } else if (joop.connectionState == ConnectionState.done) {
            if (joop.hasError) {
              return Text('${joop.error}');
            } else if (joop.hasData) {
              final weather = joop.data!;
              return Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(icon: Icons.near_me),
                        CustomIconButton(icon: Icons.location_city),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('${(weather.temp - 273.15).toDouble()}',
                            style: AppTextStyle.body1),
                        Image.network(
                          ApiConts.getIcon('11n', 4),
                          height: 160,
                          fit: BoxFit.fitHeight,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${weather.description}'.replaceAll(" ", '\n'),
                            textAlign: TextAlign.right,
                            style: AppTextStyle.body2,
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '${weather.city}',
                          textAlign: TextAlign.right,
                          style: AppTextStyle.body1,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return const Text('Some error!!!');
            }
          } else {
            return const Text('Some error!!!');
          }
        },
      ),
      // body: Center(
      //   child: FutureBuilder(
      //     future: fetchData(),
      //     builder: (ctx, sn) {
      //       if (sn.hasData) {
      //         return Column(
      //           children: [
      //             Text(sn.data!.id.toString()),
      //             Text(sn.data!.description),
      //             Text(sn.data!.main),
      //             Text(sn.data!.icon),
      //             Text(sn.data!.city),
      //             Text(sn.data!.country),
      //             Text(sn.data!.temp.toString()),
      //           ],
      //         );
      //       } else if (sn.hasError) {
      //         return Text(sn.error.toString());
      //       } else {
      //         return CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
