import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Send1ParamsPage extends StatelessWidget {
  const Send1ParamsPage({super.key});

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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
