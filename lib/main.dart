import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemmob_lanjut/app/modules/login/controllers/login_controller.dart';
import 'package:pemmob_lanjut/app/modules/login/views/login_view.dart';
import 'package:pemmob_lanjut/app/routes/app_pages.dart';
import 'package:pemmob_lanjut/layouting/hariPertama.dart';
import 'package:pemmob_lanjut/layouting/tesDio.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final login = Get.put(LoginController());
  String? email = '';

  Future<String?> getData() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    email = preferences.getString('userName');
    return email;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Koperasi Undiksha',
      initialRoute: email != null ? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
