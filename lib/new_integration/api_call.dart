import 'dart:convert';

import 'package:http/http.dart';
import 'package:rest_api_with_provider/new_integration/activity.dart';

class ApiCall {
  static const String url = "https://www.boredapi.com/api/activity";
  static Future<List<Activity>> getActivity() async {
    try {
      final Response response = await get(Uri.parse(url));
      final body = jsonDecode(response.body);

      print(body);
      // final data = List<Map<String, dynamic>>.from(body);
      // final List<Activity> activity =
      //     data.map((e) => Activity.fromMap(e)).toList();
      // return activity;
    } catch (e) {
      print(e);
    }
    return [];
  }
}
