import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off2_page.dart';

class Off1Page extends StatelessWidget {
  const Off1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off 1 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Off2Page()));
              },
              child: const Text('Go to Page off 2 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Off2Page());
              },
              child: const Text('Go to Page off 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
