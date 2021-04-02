import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      style: new TextStyle(
        color: Colors.black,
      ),
      decoration: new InputDecoration(
          prefixIcon: new Icon(Icons.search, color: Colors.grey),
          hintText: "Search...",
          hintStyle: new TextStyle(color: Colors.grey)),
    );
  }
}
