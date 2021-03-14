import 'package:flutter/material.dart';

class SectionHead extends StatelessWidget {
  const SectionHead({
    Key key,
    this.text,
  }) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
