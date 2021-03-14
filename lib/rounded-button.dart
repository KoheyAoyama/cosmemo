import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key key,
    this.icon,
  }) : super(key: key);

  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(999)),
      child: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Builder(
              builder: (BuildContext context) {
                return Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                );
              },
            ),
            onPressed: () {},
          );
        },
      ),
    );
  }
}
