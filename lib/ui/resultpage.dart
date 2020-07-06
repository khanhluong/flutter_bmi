import 'package:flutter/material.dart';
import 'package:flutter_bmi/components/button_bottom.dart';
import 'package:flutter_bmi/themes.dart';

class ResultPage extends StatelessWidget {
  final int height;
  final int weight;

  ResultPage({this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR RESULT'),
        backgroundColor: secondary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Result(this.height, this.weight),
    );
  }
}

class Result extends StatefulWidget {
  final int height;
  final int weight;

  Result(this.height, this.weight);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondary,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '${bmiResult(this.widget.height, this.widget.weight)}',
                      style: resultNumber),
                ),
                Text("$headline", style: headlines),
                Column(
                  children: <Widget>[
                    Text('Normal BMI Range: '),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "18.5 - 25 kg/m",
                        style: headlines,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$comment',
              style: headlines,
            ),
          ),
          ButtonBottom(
            buttonTitle: 'RE-CALCULATE',
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}

var comment = '';
var headline = '';

bmiResult(h, w) {
  double bmi = (w / (h * h)) * 10000;

  if (bmi < 18.5) {
    comment = "You are under Weight";
    headline = "UNDERWEIGHT";
  } else if (bmi >= 18.5 && bmi < 25) {
    comment = "You are at a healthy weight.";
    headline = "NORMAL";
  } else if (bmi > 25 && bmi <= 29.99) {
    comment = "You are at overweight.";
    headline = "OVERWEIGHT";
  } else {
    comment = "You are obese.";
    headline = "OBESE";
  }

  return bmi.round();
}
