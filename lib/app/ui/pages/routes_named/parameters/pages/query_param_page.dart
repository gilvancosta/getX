import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamPage extends StatelessWidget {
  const QueryParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Query Param'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Query Param'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(Get.parameters['id'].toString()),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(Get.parameters['product'].toString()),
              ),
            ],
          ),
        ));
  }
}
