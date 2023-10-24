import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall3_page.dart';

class Offall2Page extends StatelessWidget {
  const Offall2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off all 2 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Offall3Page();
                    },
                  ),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text('Go to Page off all 3 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.offAll(
                  const Offall3Page(),
                  predicate: ModalRoute.withName('/'),
                );
              },
              child: const Text('Go to Page all off 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
