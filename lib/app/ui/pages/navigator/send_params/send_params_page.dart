import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'send1_params_page.dart';

class SendParamsPage extends StatelessWidget {
  const SendParamsPage({super.key});

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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Send1ParamsPage(),
                  settings: const RouteSettings(arguments: 'Flutter Nativo'),
                ));
              },
              child: const Text('Go to Page off All 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(() => const Send1ParamsPage(), arguments: 'GetX');
              },
              child: const Text('Go to Page off All 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
