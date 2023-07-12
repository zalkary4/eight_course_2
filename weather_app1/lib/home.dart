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
  Future<Weather> fetchData() async {
    final dio = Dio();
    final res = await dio.get(ApiConts.adress);
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: id,
        main: main,
        description: description,
        icon: icon,
      );
    }
    print(res);
    return res;
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Bar'), centerTitle: true),
      body: FutureBuilder(
          future: fetchData(),
          builder: (ctx, sn) {
            return Text(sn.toString());
          }),
    );
  }
}
