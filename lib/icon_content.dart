import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  // const IconContent({
  //   Key key,
  // }) : super(key: key);
  IconContent({this.label, this.icon}); //{} named property
  final IconData
      icon; //if underline appears , that means final should be initialized beforehand
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
