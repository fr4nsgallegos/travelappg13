import 'package:flutter/material.dart';
import 'package:travelappg13/widgets/card_2.dart';
import 'package:travelappg13/widgets/custom_animated_drawer.dart';
import 'package:travelappg13/widgets/destination_card_widget.dart';

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
                  child: Column(
                    children: [
                      FlutterLogo(size: 75),
                      Text(
                        "Jhonny Gallegos Mendoza",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
              ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
              ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text("Configuración"),
              ),
              Divider(),
              ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
              ExpansionTile(
                title: Text("Ajustes"),
                leading: Icon(Icons.settings_outlined),
                children: [
                  ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
                  ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
                ],
              ),
            ],
          ),
        ),
        // appBar: AppBar(
        //   title: Row(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Icon(Icons.rocket, color: Colors.cyan),
        //       SizedBox(width: 8),
        //       Text("Discount Tour"),
        //     ],
        //   ),
        //   centerTitle: true,
        // ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.rocket, color: Colors.cyan),
                        SizedBox(width: 8),
                        Text("Discount Tour"),
                      ],
                    ),
                  ),
                  Text(
                    "Find the best tour",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Country",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DestinationCardWidget(),
                        DestinationCardWidget(),
                        DestinationCardWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Card2(),
                  Card2(),
                  Card2(),
                  Card2(),
                  Card2(),
                  Card2(),
                ],
              ),
            ),
            CustomAnimatedDrawer(),
          ],
        ),
      ),
    );
  }
}
