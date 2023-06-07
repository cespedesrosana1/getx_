import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/pagina1_page.dart';
import 'package:getx/pages/pagina2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // Se reemplaza por GetMaterial app a MaterialApp para importar todos los otros paquetes de GetX 
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      // routes: {
      //   'pagina1': ( _ ) => Pagina1Page(),
      //   'pagina2': ( _ ) => Pagina2Page(),
      // },
      //Manejo de ruta
      getPages: [
        GetPage(name: '/pagina1', page: () => Pagina1Page()),
        GetPage(name: '/pagina2', page: () => const Pagina2Page())
      ],
    );
  }
}
