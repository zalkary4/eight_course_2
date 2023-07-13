import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/constants/api_const.dart';
import 'package:weather_app1/models/weather.dart';

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
      appBar: AppBar(title: const Text('App Bar'), centerTitle: true),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (ctx, sn) {
              if (sn.hasData) {
                return Column(
                  children: [
                    Text(sn.data!.id.toString()),
                    Text(sn.data!.description),
                    Text(sn.data!.main),
                    Text(sn.data!.icon),
                  ],
                );
              } else if (sn.hasError) {
                return Text(sn.error.toString());
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
