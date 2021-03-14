import 'package:flutter/material.dart';
import 'constants.dart';
import 'table-list-item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmemo',
      theme: ThemeData(primarySwatch: customSwatch),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Cosmemo',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

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
