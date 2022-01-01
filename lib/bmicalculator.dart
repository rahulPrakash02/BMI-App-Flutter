import 'package:flutter/cupertino.dart';
import 'package:bmicalc/constants.dart';

class bmicalculator {
  bmicalculator(this.height, this.weight);

  int height = 0;
  int weight = 0;

  double bmicomp(value, weight) {
    return weight.toDouble() /
        ((value.toDouble() / 100) * (value.toDouble() / 100));
  }

  Text styling(double bmi)
  {
    if(bmi<18.0)
      {
        return Text("Underweight", style: underStyling,);
      }
    else if(bmi>=18.0 && bmi<24.0)
      {
        return Text("Normal", style: normalStyling,);
      }
    else if(bmi>=24.0 && bmi<30.0)
      {
        return Text("Overweight", style: overStyling,);
      }
    return Text("Obese", style: obeseStyling,);
  }
}
