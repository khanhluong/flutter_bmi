import 'package:flutter/material.dart';

import '../themes.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({Key key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.red,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: txtLabelStyle,
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
