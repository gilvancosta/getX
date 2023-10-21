import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nav2_page.dart';

class Nav1Page extends StatelessWidget {
  const Nav1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Page 01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Nav2Page()));
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Nav2Page());
              },
              child: const Text('Go to Page com GetX'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar com Flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
