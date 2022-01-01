import 'package:bmicalc/bmicalculator.dart';
import 'package:bmicalc/bodywidget.dart';
import 'package:bmicalc/constants.dart';
import 'package:bmicalc/custombuttonwidget.dart';
import 'package:bmicalc/endScreen.dart';
import 'package:flutter/material.dart';

class App_Body extends StatefulWidget {
  @override
  _App_BodyState createState() => _App_BodyState();
}

class _App_BodyState extends State<App_Body> {
  int value = 180;
  int weight = 70;
  int age = 23;
  double bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: SafeArea(
        child: Container(
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.0,
                child: Center(
                    child: Text(
                  "BMI Calculator",
                  style: textStyling,
                )),
                color: appBarColor,
                margin: EdgeInsets.all(10.0),
              ),
              bodywidget(
                secondaryColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height (in cm)",
                      style: textStyling,
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      value.toString(),
                      style: textStyling.copyWith(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Slider(
                      value: value.toDouble(),
                      min: 100,
                      max: 250,
                      inactiveColor: textColor,
                      activeColor: Color(0xFFFFFFFF),
                      onChanged: (double newvalue) {
                        setState(() {
                          value = newvalue.round();
                        });
                      },
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  bodywidget(
                    secondaryColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight (in Kg)",
                          style: textStyling,
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          weight.toString(),
                          style: textStyling.copyWith(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: customButton(Icons.add)),
                            SizedBox(
                              width: 4.0,
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: customButton(Icons.close)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  bodywidget(
                    secondaryColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age (in Years)",
                          style: textStyling,
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          age.toString(),
                          style: textStyling.copyWith(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: customButton(Icons.add)),
                            SizedBox(
                              width: 4.0,
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: customButton(Icons.close)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  bmicalculator calc = bmicalculator(value, weight);
                  bmi = calc.bmicomp(value, weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => endScreen(bmi, calc.styling(bmi)),
                    ),
                  );
                },
                child: Container(
                  color: appBarColor,
                  height: 40.0,
                  child: Center(
                    child: Text(
                      "CALCULATE",
                      style: textStyling,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
