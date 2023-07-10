import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/constants/api_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Future<dynamic> fetchData() async {
    final dio = Dio();
    final res = await dio.get(ApiConts.adress);
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
