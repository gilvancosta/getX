import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {
  const ArgumentsParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Param'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: ${arguments['nome'].toString()}'),
            Text('Idade: ${arguments['idade'].toString()}'),
          ],
        ),
      ),
    );
  }
}
