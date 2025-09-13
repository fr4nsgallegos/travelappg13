import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class CarouselPage extends StatelessWidget {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("CarouselSlider", style: TextStyle(fontSize: 50)),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                // enlargeFactor: 0.1,
                enableInfiniteScroll: false,
                autoPlayCurve: Curves.easeInCubic,
                initialPage: 2,
              ),
              items: imageList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          e,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Divider(height: 64),
            Text("GFCarousel", style: TextStyle(fontSize: 50)),

            GFCarousel(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              initialPage: 0,
              height: 200,
              hasPagination: true,
              autoPlayCurve: Curves.easeInOutExpo,
              pagerSize: 10,
              passiveIndicator: Colors.red,
              activeIndicator: Colors.green,
              enableInfiniteScroll: false,
              reverse: true,
              enlargeMainPage: true,
              items: imageList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          e,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
