import 'dart:convert';

import 'package:http/http.dart';
import 'package:rest_api_with_provider/my_user.dart';

class MyUserApi {
  static const String url = "https://jsonplaceholder.typicode.com/users";
  static Future<List<MyUser>> fetchUserApi() async {
    try {
      final Response response = await get(Uri.parse(url));
      final body = jsonDecode(response.body);
      final data = List<Map<String, dynamic>>.from(body);
      final List<MyUser> users =
          data.map((map) => MyUser.fromMap(map)).toList();
      return users;
    } catch (error) {
      print(error);
    }
    return [];
  }
}
