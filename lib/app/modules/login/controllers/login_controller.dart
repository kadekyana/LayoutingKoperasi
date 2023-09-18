import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:pemmob_lanjut/layouting/home.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  late TextEditingController username = TextEditingController();
  late TextEditingController password = TextEditingController();
  final dio = Dio();
  final String baseUrl = "http://apikoperasi.rey1024.com";

  void getData() async {
    final response = await dio.get(baseUrl + '/users');
    print(response);
  }

  void login(String username, String password) async {
    try {
      final response = await dio.post(
        baseUrl,
        data: {'username': username, 'password': password},
        options: Options(
          headers: {'Access-Control-Request-Method': 'POST'},
        ),
      );
      if (response.statusCode == 200) {
        Get.offAllNamed('/home');
        Get.snackbar("Success Login", "Selamat Mencoba",
            backgroundColor: Colors.indigo[900],
            borderColor: Colors.black,
            borderWidth: 1,
            colorText: Colors.white);
        print(response.data);
      } else {
        Get.snackbar("Error", "Username atau Password Salah");
      }
    } catch (e) {
      Get.snackbar('Erorr', 'Email And Password Salah, Coba Lagi !',
          colorText: Colors.white,
          backgroundColor: Colors.red,
          borderWidth: 1,
          borderColor: Colors.black);
      print(e);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void onClose() {
    username.clear();
    password.clear();
    super.onClose();
  }

  void increment() => count.value++;
}
