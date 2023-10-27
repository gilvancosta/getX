import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamPage extends StatelessWidget {
  const PathParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Param'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Path Param'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(Get.parameters['slug'].toString()),
            ),
          ],
        ),
      ),
    );
  }
}
