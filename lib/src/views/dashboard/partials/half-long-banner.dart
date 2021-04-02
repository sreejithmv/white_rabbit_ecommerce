import 'package:flutter/material.dart';

class HalfLongBanner extends StatelessWidget {
  final List<String> imgList;
  HalfLongBanner(this.imgList);

  @override
  Widget build(BuildContext context) {
    List<Widget> images = [];
    for (var image in this.imgList) {
      images.add(Container(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          'assets/imgs/$image',
          fit: BoxFit.cover,
        ),
        color: Colors.teal[100],
      ));
    }
    return Container(
      height: 250,
      child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: images),
    );
  }
}
