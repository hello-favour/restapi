import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_with_provider/api_provider.dart';
import 'package:rest_api_with_provider/my_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: state.users2.length,
        itemBuilder: (context, index) {
          final MyUser myUser = state.users2[index];
          return ListTile(
            title: Text(myUser.email),
            subtitle: Text(myUser.address.toString()),
          );
        },
      ),
    );
  }
}
