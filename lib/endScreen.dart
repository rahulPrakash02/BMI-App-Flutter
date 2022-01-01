import 'package:bmicalc/bodywidget.dart';
import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class endScreen extends StatelessWidget {
  endScreen(this.bmix, this.status);

  double bmix;
  Text status;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: appBarColor,
      child: SafeArea(
        child: Container(
          child: bodywidget(
            primaryColor,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  status,
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Your Result is: ",
                    style: textStyling,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmix.toStringAsFixed(1),
                    style: textStyling.copyWith(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: bodywidget(
                      secondaryColor,
                      Text(
                        "RE-CALCULATE",
                        style: textStyling,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
