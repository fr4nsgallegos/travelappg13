import 'package:flutter/material.dart';
import 'package:travelappg13/pages/home_page.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  String asset;
  Color bgColor;
  bool showButton;

  WelcomeWidget({
    required this.title,
    required this.description,
    required this.asset,
    required this.bgColor,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$asset.png",
            height: MediaQuery.of(context).size.height / 5,
          ),
          SizedBox(height: 32),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          showButton
              ? Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text("Vamos!!!"),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
