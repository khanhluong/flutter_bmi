import 'package:flutter/material.dart';
import 'hextoint.dart';

Color primary = Color.fromRGBO(28, 40, 51, 0.8);
Color secondary = Colors.black;
Color primaryButtonColor = Colors.orangeAccent;
Color secondaryButtonColor = HexColor("212f3c");
const kBottomContainerHeight = 80.0;
Color kActiveCardColour = HexColor("1D1E33");
Color kInactiveCardColour = HexColor("111328");
Color kBottomContainerColour = HexColor("EB1555");

const txtLabelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const txtNumberStyle = TextStyle(
  fontSize: 50.0,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

const btnTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const txtTitleStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const txtResultStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const txtBMIStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const txtBodyStyle = TextStyle(
  fontSize: 22.0,
);

TextStyle headlines =
    TextStyle(letterSpacing: 2.0, fontSize: 15, color: HexColor("d3d3d3"));
TextStyle boldNumber = TextStyle(
    color: HexColor("fbfbfb"), fontWeight: FontWeight.bold, fontSize: 50.0);
TextStyle resultNumber = TextStyle(
    color: HexColor("fbfbfb"),
    fontWeight: FontWeight.bold,
    fontSize: 80.0,
    letterSpacing: 0.1);
