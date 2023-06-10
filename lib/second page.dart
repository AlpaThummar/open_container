import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  Color c;
  second_page(this.c);

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 500,width: 500,)
    );
  }
}
