import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes_named/exemplo01/exemplo01_page.dart';

class RotasNomeadasWidget extends StatelessWidget {
  const RotasNomeadasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          const Text('Rotas Nomeadas'),
          const SizedBox(height: 20),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/exemplo01');
                  // Navigator.pushNamed(context, '/exemplo01');
                  /*             Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Nav1Page()),
                        );*/
                },
                child: const Text('Exemplo 01'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/notfound2');
                },
                child: const Text('Não Existe'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/parameter');
                },
                child: const Text('Envio de Parametros'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/middleware');
                },
                child: const Text('Middleware'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/nested');
                },
                child: const Text('navigator 2.0'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
