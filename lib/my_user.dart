import 'package:flutter/foundation.dart';

class MyUser {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;

  final Map<String, dynamic> address;
  final Map<String, dynamic> company;

  const MyUser({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.address,
    required this.company,
  });

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: map["id"] ?? 0,
      name: map["name"] ?? "",
      username: map["username"] ?? "",
      email: map["email"] ?? "",
      phone: map["phone"] ?? "",
      address: Map<String, dynamic>.from(map["address"]),
      company: Map<String, dynamic>.from(map["company"]),
    );
  }
}
