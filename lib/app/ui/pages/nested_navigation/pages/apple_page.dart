import 'package:flutter/material.dart';

class ApplePage extends StatelessWidget {
  const ApplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Apple Page'),
            Icon(Icons.apple, size: 100, color: Colors.red),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
