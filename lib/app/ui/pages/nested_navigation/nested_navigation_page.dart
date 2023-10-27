import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/android_page.dart';
import 'pages/apple_page.dart';

class NestedNavigationPage extends StatelessWidget {
  const NestedNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentBottomIndex = 0.obs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested navigator'),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: currentBottomIndex.value,
          onTap: (index) {
            currentBottomIndex(index);
            switch (index) {
              case 0:
                Get.offNamed('/', id: 1);
                break;
              case 1:
                Get.offNamed('/android', id: 1);
                break;
              default:
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'Apple'),
            BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Android'),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition = Transition.cupertino;

          if (settings.name == '/') {
            page = const ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/android') {
            page = const AndroidPage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text('Página não encontrada'));
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
