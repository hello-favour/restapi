import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_with_provider/new_integration/activity.dart';
import 'package:rest_api_with_provider/new_integration/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ApiCallProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bord Api"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: state.activity.length,
        itemBuilder: (context, index) {
          final Activity activity = state.activity[index];
          return ListTile(
            title: Text(activity.activity),
            subtitle: Text(activity.type),
          );
        },
      ),
    );
  }
}
