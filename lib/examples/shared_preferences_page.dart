import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  int contador = 0;
  String user = "";
  void guardarContador() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt("contador", contador);
    // GUARDANDO MÁS INFORMACIÓN
    await prefs.setString("username", "jgallegos");
    await prefs.setDouble("hegth", 1.75);
    await prefs.setBool("isLoggedIn", true);
    prefs.setStringList("favorites", ["Flutter", "Dart", "Developer"]);
  }

  void leerContador() async {
    final prefs = await SharedPreferences.getInstance();
    int? contadorAux = prefs.getInt("contador");
    contador = contadorAux ?? 0;
    user = prefs.getString("username") ?? "-";
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    leerContador();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(contador.toString(), style: TextStyle(fontSize: 50)),
            Text(user, style: TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                contador++;
                guardarContador();
                setState(() {});
              },
              child: Text("añadir 1"),
            ),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.remove("username");
                leerContador();
              },
              child: Text("Eliminar solo la key de username"),
            ),
            ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.clear();
                leerContador();
              },
              child: Text("Eliminar todas las keys de sharedPreferences"),
            ),
          ],
        ),
      ),
    );
  }
}
