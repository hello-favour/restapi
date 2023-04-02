import 'package:flutter/cupertino.dart';
import 'package:rest_api_with_provider/my_user.dart';
import 'package:rest_api_with_provider/myuser_api.dart';

class ApiProvider extends ChangeNotifier {
  List<MyUser> users2 = [];

  ApiProvider() {
    _fetchUserApi();
  }

  void _fetchUserApi() async {
    users2 = await MyUserApi.fetchUserApi();
    notifyListeners();
  }
}
