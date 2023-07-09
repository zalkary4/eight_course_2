import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic res;
  fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 5));
    res = await dio.get('https://jsonplaceholder.typicode.com/posts');
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        centerTitle: true,
      ),
      body: Center(
        // child: Text('App Bar'),
        child: Text('$res'),
      ),
    );
  }
}
