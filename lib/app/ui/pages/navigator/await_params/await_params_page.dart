import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'await1_params_page.dart';

class AwaitParamsPage extends StatelessWidget {
  const AwaitParamsPage({super.key});

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
              onPressed: () async {
                final result = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Await1ParamsPage(),
                  settings: const RouteSettings(arguments: 'Flutter Nativo'),
                ));
                debugPrint('Resultado nativo : $result');
              },
              child: const Text('Go to Page off All 1 com Flutter Nativo'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () async {
                final result = await Get.to(() => const Await1ParamsPage(), arguments: 'GetX');
                debugPrint('Resultado getX : $result');
              },
              child: const Text('Go to Page off All 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
