import 'package:calculator/providers/calculate_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;

  CalculatorButton({required this.buttonText});

  double num1 = 0;
  double num2 = 0;
  String operand = '';
  String output = '';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: OutlinedButton(
          onPressed: () {
            Provider.of<CalculateData>(context, listen: false)
                .onButtonPressed(buttonText);
          },
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isNumeric(buttonText) || buttonText == '.'
                  ? Colors.black
                  : Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
