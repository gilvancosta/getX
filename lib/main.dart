import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/app/ui/pages/named_routes/parameters/pages/arguments_param_page.dart';
import 'package:jornada_getx/app/ui/pages/named_routes/parameters/pages/path_param_page.dart';
import 'package:jornada_getx/app/ui/pages/named_routes/parameters/pages/query_param_page.dart';

import 'app/ui/pages/home/home_page.dart';
import 'app/ui/pages/named_routes/404/page_404.dart';
import 'app/ui/pages/named_routes/exemplo01/exemplo01_page.dart';
import 'app/ui/pages/named_routes/parameters/parameter_page.dart';

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
      initialRoute: '/',

      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/exemplo01', page: () => const Exemplo01Page()),
        GetPage(name: '/404', page: () => const Page404()),
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
    );
  }
}
