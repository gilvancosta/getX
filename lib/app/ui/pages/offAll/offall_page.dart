import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall1_page.dart';

class OffallPage extends StatelessWidget {

  const OffallPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Offall1Page()));
              },
              child: const Text('Go to Page off All 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Offall1Page());
              },
              child: const Text('Go to Page off All 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
