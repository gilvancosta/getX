// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddleware extends GetMiddleware {
  RouteMiddleware() : super(priority: 1);

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('RouteMiddleware111 onPageCalled: $page');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    print('RouteMiddleware333: $page');
    return Theme(data: ThemeData.dark(), child: page);
  }

/*   @override
  RouteSettings? redirect(String? route) {
    print('RouteMiddleware222: $route');

    if (route == '/middleware') {
      return const RouteSettings(name: '/404');
    }
    return null;
  } */

  @override
  void onPageDispose() {
    print('RouteMiddleware444');
    super.onPageDispose();
  }
}
