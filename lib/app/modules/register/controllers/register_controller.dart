import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:pemmob_lanjut/app/modules/login/views/login_view.dart';
import 'package:pemmob_lanjut/layouting/hariPertama.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  late TextEditingController name = TextEditingController();
  late TextEditingController nim = TextEditingController();
  final dio = Dio();
  final String baseUrl = "http://apikoperasi.rey1024.com/register";

  void register(String email, String password, String name, String nim) async {
    try {
      final response = await dio.post(
        baseUrl,
        data: {
          "username": email,
          "password": password,
          "nama": name,
          "nim": nim
        },
        options: Options(
          headers: {'Access-Control-Request-Method': 'POST'},
        ),
      );
      print(response.data);
      if (response.statusCode == 200) {
        Get.snackbar("Sukses Buat Akun", "Silahkkan Login",
            colorText: Colors.white, backgroundColor: Colors.amber);
        Get.offAllNamed('/login');
      } else {
        Get.snackbar("Register Failed", "Email or Password is wrong");
      }
    } catch (e) {
      Get.snackbar("Register Gagal", "Coba Lagi !",
          colorText: Colors.white, backgroundColor: Colors.indigo[900]);
      print(e);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    username.clear();
    password.clear();
    super.onClose();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  void increment() => count.value++;
}
