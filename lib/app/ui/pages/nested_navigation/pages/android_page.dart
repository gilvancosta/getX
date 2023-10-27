import 'package:flutter/material.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Android Page'),
            Icon(Icons.android, size: 100, color: Colors.green),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
