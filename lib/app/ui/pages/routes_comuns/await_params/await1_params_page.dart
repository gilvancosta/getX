import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Await1ParamsPage extends StatelessWidget {
  const Await1ParamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final paramNativo = ModalRoute.of(context)?.settings.arguments ?? 'Nenhum';
    final paramGetX = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Parametro Nativo recebido: $paramNativo'),
            Text('Parametro GetX recebido: $paramGetX'),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('Retorno do Flutter Nativo');
              },
              child: const Text('Voltar nativo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Retorno do GetX');
              },
              child: const Text('Voltar GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
