import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParameterPage extends StatelessWidget {
  const ParameterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parametros'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/parameter/arguments', arguments: {
                'nome': 'João',
                'idade': 35,
              });
            },
            child: const Text('Argumentos'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final param = Uri.encodeFull('path-page-product');
              Get.toNamed(
                '/parameter/pathparam/$param',
              );
            },
            child: const Text('pathParameters'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              /* 
              Get.toNamed(
                '/parameter/queryparam?id=1&product=Teclado Didital',
              ); */

              Get.toNamed(
                '/parameter/queryparam',
                parameters: {
                  'id': '2',
                  'product': 'Teclado Didital',
                },
              );
            },
            child: const Text('Query Param'),
          ),
        ],
      )),
    );
  }
}
