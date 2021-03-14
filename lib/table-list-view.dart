import 'package:flutter/material.dart';
import 'table-list-item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var i;
    return ListView(
      children: <Widget>[
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
        TableListItem(),
      ],
    );
  }
}
