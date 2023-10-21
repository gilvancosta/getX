import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../nav/nav1_page.dart';
import '../nav/nav2_page.dart';
import '../off/off_page.dart';
import '../offAll/offall_page.dart';

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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Nav1Page());
              // Navigator.pushNamed(context, '/nav1');
              /*             Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Nav1Page()),
              );*/
            },
            child: const Text('Nav Page 01'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const Nav2Page());
              //  Navigator.pushNamed(context, '/nav2');
            },
            child: const Text('Nav Page 02'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const OffPage());
              // Navigator.pushNamed(context, '/nav1');
              /*             Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Nav1Page()),
              );*/
            },
            child: const Text('Off Page'),
          ),

      
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const OffallPage());
              // Navigator.pushNamed(context, '/nav1');
              /*             Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Nav1Page()),
              );*/
            },
            child: const Text('OffAll (PopAndRemoveUntill)'),
          ),

        ],
      )),
    );
  }
}
