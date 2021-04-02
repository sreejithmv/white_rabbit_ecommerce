import 'package:flutter/material.dart';

class PageNotFoundPage extends StatelessWidget {
  static String routeName = "/page-not-found";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page not found'),
      ),
      body: Center(
        child: Text('You reached a wrong place.'),
      ),
    );
  }
}
