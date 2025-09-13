import 'package:flutter/material.dart';

class CustomExpansionTile2 extends StatefulWidget {
  final String title; //titulo del header
  final List<Widget> children;

  CustomExpansionTile2({required this.title, required this.children});

  @override
  State<CustomExpansionTile2> createState() => _CustomExpansionTile2State();
}

class _CustomExpansionTile2State extends State<CustomExpansionTile2>
    with SingleTickerProviderStateMixin {
  // ANIMACIONES Y CONTROLADORES
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  bool _expanded = false; //ayuda a saber si esta expandido o no0

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // animationcontroller va a controlar el valor de la animación,
    // vsync this ->  ajusta el singlettickerprovider para optimizar frames
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    //Curveanimation aplica una curva sobre el controlador, de modo que le de la animacion en concreto al mostrar la ifnormacion
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // SlideAnimation animamos la posicion con un tween
    // Se aplica otra curva ara dar más soltura al movimiento
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _expanded = !_expanded;
    setState(() {});
    // Si el expanded es true, reproducimos la animacion hacia adelante, si no hacia  atras
    if (_expanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header
        ListTile(
          title: Text(widget.title),
          trailing: AnimatedRotation(
            duration: Duration(microseconds: 300),
            turns: _expanded ? 0.5 : 00, //0.5 = 180 grados
            child: Icon(Icons.expand_more),
          ),
          onTap: _handleTap,
        ),
        // CONTENIDO ANIMADO
        ClipRRect(
          child: AnimatedBuilder(
            animation: _controller,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(children: widget.children),
              ),
            ),
            builder: (BuildContext context, Widget? child) {
              return Align(heightFactor: _controller.value, child: child);
            },
          ),
        ),
      ],
    );
  }
}
