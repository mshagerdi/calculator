import 'package:calculator/providers/calculate_data.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/calulator_buttons.dart';
import 'package:calculator/utilities/constants.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(22),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                Provider.of<CalculateData>(context).output,
                style: TextStyle(
                  fontSize: 44,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(buttonText: '7'),
                  CalculatorButton(buttonText: '8'),
                  CalculatorButton(buttonText: '9'),
                  SizedBox(width: sizedBoxWidth),
                  CalculatorButton(buttonText: operands[0]),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(buttonText: '4'),
                  CalculatorButton(buttonText: '5'),
                  CalculatorButton(buttonText: '6'),
                  SizedBox(width: sizedBoxWidth),
                  CalculatorButton(buttonText: 'x'),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(buttonText: '1'),
                  CalculatorButton(buttonText: '2'),
                  CalculatorButton(buttonText: '3'),
                  SizedBox(width: sizedBoxWidth),
                  CalculatorButton(buttonText: '-'),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(buttonText: '.'),
                  CalculatorButton(buttonText: '0'),
                  CalculatorButton(buttonText: '00'),
                  SizedBox(width: sizedBoxWidth),
                  CalculatorButton(buttonText: '+'),
                ],
              ),
              SizedBox(height: sizedBoxHeight),
              Row(
                children: [
                  CalculatorButton(buttonText: 'Clear'),
                  SizedBox(width: 22),
                  CalculatorButton(buttonText: '='),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
