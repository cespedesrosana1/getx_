import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/models/usuario.dart';

import 'controllers/usuario_controller.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.arguments['edad']);

    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario',
                    style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                onPressed: () {
                  usuarioCtrl.cargarUsuario(Usuario(nombre: 'Pepito', edad: 5));
                  // Un Snackbar de GetX
                  Get.snackbar(
                    'Usuario establecido',
                    'Pepito es el nombre del usuario',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                      )
                    ],
                  );
                }),
            MaterialButton(
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioCtrl.cambiarEdad(8);
                  Get.snackbar(
                    'Se cambio la Edad',
                    'Pepito es el nombre del usuario',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 22,
                      )
                    ],
                  );
                }),
            MaterialButton(
                child: Text('Añadir Profesion',
                    style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                onPressed: () {
                  //usuarioCtrl.agregarProfesion( 'Profesión #${ usuarioCtrl.usuario.value.profesiones.length + 1 }' );
                  usuarioCtrl.agregarProfesion('Ventas');
                }),
            MaterialButton(
                child: Text('Cambiar tema',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                color: Colors.blue,
                // Se esta cambiando el color de la app directamente
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                }),
          ],
        ),
      ),
    );
  }
}
