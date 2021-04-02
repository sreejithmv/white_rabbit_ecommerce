import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> imgList;

  Carousel(this.imgList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: imgList
            .map((item) => Container(
                  margin: EdgeInsets.all(0),
                  child: Image.asset(
                    'assets/imgs/' + item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
