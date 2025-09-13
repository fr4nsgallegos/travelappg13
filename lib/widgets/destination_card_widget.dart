import 'package:flutter/material.dart';

class DestinationCardWidget extends StatelessWidget {
  const DestinationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
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
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("NEW", style: TextStyle(color: Colors.white)),
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "18 tours",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
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
        ],
      ),
    );
  }
}
