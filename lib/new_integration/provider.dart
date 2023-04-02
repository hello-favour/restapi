import 'package:flutter/cupertino.dart';
import 'package:rest_api_integration/new_integration/activity.dart';
import 'package:rest_api_integration/new_integration/api_call.dart';

class ApiCallProvider extends ChangeNotifier {
  List<Activity> activity = [];

  ApiCallProvider() {
    _getMyActivities();
  }

  void _getMyActivities() async {
    activity = await ApiCall.getActivity();
    notifyListeners();
  }
}
