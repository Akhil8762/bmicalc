





import 'package:flutter/material.dart';

import 'constantFile.dart';

class RepeatTextAndIcon extends StatelessWidget {
  RepeatTextAndIcon(
      {
        @required this.iconData, this.label
      }
      );
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 85,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}