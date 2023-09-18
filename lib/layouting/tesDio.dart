import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class TesDio extends StatefulWidget {
  const TesDio({super.key});

  @override
  State<TesDio> createState() => _TesDioState();
}

class _TesDioState extends State<TesDio> {
  List data = [];
  String title = '';
  final dio = Dio();
  void getdata() async {
    final response = await dio.get('https://dummyjson.com/products/1');
    print(response.data);
    setState(() {});
  }

  void create() async {
    final response = await dio.post('https://dummyjson.com/products/add',
        data: {'title': 'BMW Pencil'});
  }

  @override
  void initState() {
    getdata();
    create();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome ${title}'),
          centerTitle: true,
        ),
        // body: ListView.builder(
        //     padding: const EdgeInsets.all(8),
        //     itemCount: data.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         height: 50,
        //         color: Colors.white,
        //         child: Center(child: Text('Entry ${data[index]}')),
        //       );
        //     }),
      ),
    );
  }
}
