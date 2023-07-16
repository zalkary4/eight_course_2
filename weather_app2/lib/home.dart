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
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final res = await dio.get(ApiConts.adress);
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        city: res.data['name'],
        temp: res.data['main']['temp'],
        country: res.data['sys']['country'],
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.appBarTitle, style: AppTextStyle.appBar),
        backgroundColor: AppColors.white,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(icon: Icons.near_me),
                CustomIconButton(icon: Icons.location_city),
              ],
            ),
            Row(
              children: [
                Text(
                  '8',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 96,
                  ),
                ),
              ],
            ),
          ],
        ),
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
