import 'package:flutter/material.dart';

class DataTableRow extends StatelessWidget {
  const DataTableRow({
    Key key,
    this.dataTitle,
    this.dataDescription,
  }) : super(key: key);
  final dataTitle, dataDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 10,
            right: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 112.0,
                child: Text(dataTitle),
              ),
              Expanded(
                child: Text(dataDescription),
              ),
            ],
          ),
        ),
        Padding(
          //Border
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          child: Container(
            color: Colors.black12,
            height: 1.0,
          ),
        )
      ],
    );
  }
}
