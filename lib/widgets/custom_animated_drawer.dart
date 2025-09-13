import 'package:flutter/material.dart';

class CustomAnimatedDrawer extends StatefulWidget {
  const CustomAnimatedDrawer({super.key});

  @override
  State<CustomAnimatedDrawer> createState() => _CustomAnimatedDrawerState();
}

class _CustomAnimatedDrawerState extends State<CustomAnimatedDrawer> {
  bool _isOpen = false;

  void _toggleDrawer() {
    _isOpen = !_isOpen;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo oscruco clickeable para cerrar
        if (_isOpen)
          GestureDetector(
            onTap: _toggleDrawer,
            child: Container(color: Colors.black.withOpacity(0.6)),
          ),

        // Drawer con Animación
        AnimatedScale(
          scale: _isOpen ? 1 : 0.7,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeOutBack, //animación con efecto rebote suave
          child: AnimatedOpacity(
            opacity: _isOpen ? 1 : 0,
            duration: Duration(milliseconds: 300),
            child: Container(
              width: 250,
              height: double.infinity,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  DrawerHeader(
                    child: Center(
                      child: Text(
                        "Mi Drawer Personalizado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Botón menu hamburguesa
        // if (!_isOpen)
        Positioned(
          top: 5,
          left: 10,
          child: IconButton(
            onPressed: () {
              _toggleDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
