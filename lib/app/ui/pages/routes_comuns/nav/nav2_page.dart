import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav1_page.dart';

class Nav2Page extends StatelessWidget {
  const Nav2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Page 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Nav1Page()));
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(const Nav1Page());
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
