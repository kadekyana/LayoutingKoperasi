import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemmob_lanjut/app/modules/login/views/login_view.dart';
import 'package:pemmob_lanjut/app/routes/app_pages.dart';
import 'package:pemmob_lanjut/layouting/hariPertama.dart';
import 'package:pemmob_lanjut/layouting/tesDio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Koperasi Undiksha',
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
