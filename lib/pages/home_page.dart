import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerScrimColor: Colors.black.withOpacity(
          0.6,
        ), //Color que aparece por detras de menu hamburguesa
        drawer: Drawer(
          width: 300, //definir el ancho del menu
          shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(50), //borde circular a todo
            borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Jhonny Gallegos Mendoza",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
              ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
              ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text("Configuración"),
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text("Discount Tour"), centerTitle: true),
      ),
    );
  }
}
