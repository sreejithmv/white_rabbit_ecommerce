import 'package:flutter/material.dart';

class FullBanner extends StatelessWidget {
  final String imageUrl;
  FullBanner(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/imgs/$imageUrl',
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
