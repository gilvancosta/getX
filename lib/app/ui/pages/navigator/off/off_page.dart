import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off1_page.dart';

class OffPage extends StatelessWidget {
  const OffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Off1Page()));
              },
              child: const Text('Go to Page off 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Off1Page());
              },
              child: const Text('Go to Page off 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
