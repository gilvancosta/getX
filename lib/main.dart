// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/app/ui/pages/routes_named/parameters/pages/arguments_param_page.dart';
import 'package:jornada_getx/app/ui/pages/routes_named/parameters/pages/path_param_page.dart';
import 'package:jornada_getx/app/ui/pages/routes_named/parameters/pages/query_param_page.dart';

import 'app/ui/pages/home/home_page.dart';
import 'app/ui/pages/middlewares/middlewares_home_page.dart';
import 'app/ui/pages/middlewares/route_middleware.dart';
import 'app/ui/pages/nested_navigation/nested_navigation_page.dart';
import 'app/ui/pages/routes_named/404/page_404.dart';
import 'app/ui/pages/routes_named/exemplo01/exemplo01_page.dart';
import 'app/ui/pages/routes_named/parameters/parameter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',

      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/exemplo01', page: () => const Exemplo01Page()),
        GetPage(name: '/404', page: () => const Page404()),
        GetPage(
          name: '/middleware',
          page: () => const MiddlewaresHomePage(),
          middlewares: [
            RouteMiddleware(),
          ],
        ),
        GetPage(name: '/nested', page: () => const NestedNavigationPage()),
        
        GetPage(
          name: '/parameter',
          page: () => const ParameterPage(),
          children: [
            GetPage(name: '/arguments', page: () => const ArgumentsParamPage()),
            GetPage(name: '/pathparam/:slug', page: () => const PathParamPage()),
            GetPage(name: '/queryparam', page: () => const QueryParamPage()),
          ],
        ),
      ],
      // dircionar para uma pagina 404 caso a rota não exista

      unknownRoute: GetPage(name: '/404', page: () => const Page404()),
      routingCallback: (Routing? routing) {
        print(routing?.previous);
        print(routing?.current);
      },
    );
  }
}
