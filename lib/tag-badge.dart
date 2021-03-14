import 'package:flutter/material.dart';

class TagBadge extends StatelessWidget {
  const TagBadge({
    Key key,
    this.tag,
  }) : super(key: key);

  final tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2.0,
          bottom: 2.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Text(
          tag,
          style: TextStyle(fontSize: 12.0, color: Colors.white),
        ),
      ),
    );
  }
}
