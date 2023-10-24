import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../named_routes/exemplo01/exemplo01_page.dart';

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
                  Get.toNamed('/home/exemplo01');
                  // Navigator.pushNamed(context, '/nav1');
                  /*             Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Nav1Page()),
                        );*/
                },
                child: const Text('Exemplo 01'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home/notfound2');
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


            ],
          ),
        ],
      ),
    );
  }
}
