import 'package:flutter/material.dart';
import 'package:flutter_bmi/themes.dart';

class ButtonBottom extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const ButtonBottom({Key key, this.onTap, this.buttonTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: btnTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
