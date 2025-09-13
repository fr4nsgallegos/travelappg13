import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:travelappg13/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFCarousel(
          height: MediaQuery.of(context).size.height,
          hasPagination: true,
          enableInfiniteScroll: false,
          enlargeMainPage: true,
          items: [
            WelcomeWidget(
              title: "Viaja",
              description:
                  "raset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem",
              asset: "avion",
              bgColor: Colors.orange,
            ),
            WelcomeWidget(
              title: "Imprimte tus tickets",
              description:
                  "raset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem",
              asset: "print",
              bgColor: Colors.red,
            ),
            WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "raset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem",
              asset: "agregar",
              bgColor: Colors.cyan,
              showButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
