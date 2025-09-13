import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color(0xffDCFEF9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
            child: Image.network(
              "https://images.pexels.com/photos/460376/pexels-photo-460376.jpeg",
              width: MediaQuery.of(context).size.width / 4,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thailand",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text("10 nigths for two/all inclusive"),
              Text(
                "\$ 215.0",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            decoration: BoxDecoration(
              color: Color(0xff2EBBD1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  "4.5",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(Icons.star, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
