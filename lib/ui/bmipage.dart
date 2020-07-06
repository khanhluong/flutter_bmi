import 'package:flutter/material.dart';
import 'package:flutter_bmi/components/button_bottom.dart';
import 'package:flutter_bmi/components/icon_content.dart';
import 'package:flutter_bmi/components/round_icon_button.dart';
import 'package:flutter_bmi/components/reusable_card.dart';
import 'package:flutter_bmi/ui/resultpage.dart';
import 'package:flutter_bmi/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  int age = 7;
  int weight = 27;
  int height = 120;
  double maxHeight = 220;
  double minHeight = 120;
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondary,
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("BMI CALCULATOR"),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colours: selectedGender == Gender.male
                    ? kActiveCardColour
                    : kInactiveCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              )),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colours: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              )
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: ReusableCard(
              colours: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT (cm)',
                    style: headlines,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '$height',
                      style: boldNumber,
                    ),
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: minHeight,
                    max: maxHeight,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '$newValue.round()';
                    },
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colours: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT', style: headlines),
                      Text(
                        weight.toString(),
                        style: txtNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colours: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: headlines,
                      ),
                      Text(
                        age.toString(),
                        style: txtNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          ButtonBottom(
            buttonTitle: 'CALCULATE YOUR BMI',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          height: height,
                          weight: weight,
                        ))),
          )
        ],
      ),
    );
  }
}
