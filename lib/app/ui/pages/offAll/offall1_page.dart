import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall2_page.dart';

class Offall1Page extends StatelessWidget {

  const Offall1Page({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All 1 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Offall2Page()));
              },
              child: const Text('Go to Page off 2 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Offall2Page());
              },
              child: const Text('Go to Page off 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
