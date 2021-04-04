import 'package:cosmemo/slidable-item.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SlidableItem(),
        SlidableItem(),
        SlidableItem(),
        SlidableItem(),
        SlidableItem(),
      ],
    );
  }
}
