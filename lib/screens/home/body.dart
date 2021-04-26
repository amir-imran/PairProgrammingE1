import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({red, green, blue, size})
      : _size = size,
        _red = red,
        _blue = blue,
        _green = green;

  final _size;
  final double _red;
  final double _green;
  final double _blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.alarm,
        color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1.0),
        size: _size,
      ),
    );
  }
}
