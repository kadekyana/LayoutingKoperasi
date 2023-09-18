// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);

import 'dart:convert';

class User {
  String userId;
  String username;
  String password;
  String nama;
  String saldo;
  String nomorRekening;

  User({
    required this.userId,
    required this.username,
    required this.password,
    required this.nama,
    required this.saldo,
    required this.nomorRekening,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        username: json["username"],
        password: json["password"],
        nama: json["nama"],
        saldo: json["saldo"],
        nomorRekening: json["nomor_rekening"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "password": password,
        "nama": nama,
        "saldo": saldo,
        "nomor_rekening": nomorRekening,
      };
}
