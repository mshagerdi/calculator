import 'package:flutter/material.dart';
import 'package:calculator/utilities/constants.dart';

class CalculateData extends ChangeNotifier {
  String _output = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';
  bool isDone = false;

  String get output {
    return _output;
  }

  void onButtonPressed(String buttonText) {
    if (buttonText == 'Clear') {
      _output = '0';
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else if (operands.contains(buttonText)) {
      num1 = double.parse(_output);
      operand = buttonText;
      _output = '0';
    } else if (buttonText == '.') {
      if (_output.contains(buttonText)) {
        return;
      } else {
        _output += buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(_output);
      _output = calculate(num1, num2, operand).toString();
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
      isDone = true;
    } else {
      (_output == '0' || isDone) ? _output = buttonText : _output += buttonText;
      isDone = false;
    }

    notifyListeners();
  }

  double calculate(double num1, double num2, String operand) {
    if (operand == '/') {
      return num1 / num2;
    } else if (operand == 'x') {
      return num1 * num2;
    } else if (operand == '-') {
      return num1 - num2;
    } else if (operand == '+') {
      return num1 + num2;
    } else {
      return 0;
    }
  }
}
