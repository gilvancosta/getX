import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off3_page.dart';

class Off2Page extends StatelessWidget {
  const Off2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off 2 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Off3Page()));
              },
              child: const Text('Go to Page off 3 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.off(const Off3Page());
              },
              child: const Text('Go to Page off 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
