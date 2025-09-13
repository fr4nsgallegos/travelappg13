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
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.rocket, color: Colors.cyan),
              SizedBox(width: 8),
              Text("Discount Tour"),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Container(
                padding: EdgeInsets.all(16),
                width: 170,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.srcATop,
                    ),
                    image: NetworkImage(
                      "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?_gl=1*1vovak0*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTc3MjQ0NjIkbzcwJGcxJHQxNzU3NzI0NTA1JGoxNyRsMCRoMA..",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "NEW",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 80,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: 0,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?_gl=1*1xbsusj*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTc3MjQ0NjIkbzcwJGcxJHQxNzU3NzI1NjA1JGozMSRsMCRoMA..",
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?_gl=1*1e3a13f*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTc3MjQ0NjIkbzcwJGcxJHQxNzU3NzI1NTg3JGo0OSRsMCRoMA..",
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 40,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?_gl=1*cmhs3e*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTc3MjQ0NjIkbzcwJGcxJHQxNzU3NzI1NjEyJGoyNCRsMCRoMA..",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thailand",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "18 tours",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.35),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.star, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
