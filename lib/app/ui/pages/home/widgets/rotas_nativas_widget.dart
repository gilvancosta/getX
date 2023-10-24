import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../native_routes/await_params/await_params_page.dart';
import '../../native_routes/nav/nav1_page.dart';
import '../../native_routes/nav/nav2_page.dart';
import '../../native_routes/off/off_page.dart';
import '../../native_routes/offAll/offall_page.dart';
import '../../native_routes/send_params/send_params_page.dart';

class RotasNativasWidget extends StatelessWidget {
  const RotasNativasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          const Text('Rotas Nativas'),
          const SizedBox(height: 20),
          Column(
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
                child: const Text('OffAll'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const SendParamsPage());
                  // Navigator.pushNamed(context, '/nav1');
                  /*             Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Nav1Page()),
                        );*/
                },
                child: const Text('Send Params'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const AwaitParamsPage());
                  // Navigator.pushNamed(context, '/nav1');
                  /*             Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Nav1Page()),
                        );*/
                },
                child: const Text('AwaitParamsPage'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
