import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/rotas_nativas_widget.dart';
import 'widgets/rotas_nomeadas_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RotasNativasWidget(),
              SizedBox(width: 10),
              RotasNomeadasWidget(),
            ],

          ),
        ],
      ),
    );
  }
}
