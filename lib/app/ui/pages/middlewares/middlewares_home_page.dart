import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {

  const MiddlewaresHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Query Param'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('xxxx'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
               child: const Text('yyyy'),
              ),
            ],
          ),
        ));
  }
}
