import 'package:flutter/material.dart';
import 'package:getx_simple_calculator/constants/colors.dart';

class Equations {
  static bool isOperator(
    String buttonText, {
    bool hasEquals = false,
  }) {
    final operators = ['+', '-', 'x', '/', '.']..addAll(hasEquals ? ['='] : []);

    return operators.contains(buttonText);
  }

  static bool isOperatorAtEnd(String equation) {
    if (equation.isNotEmpty) {
      return Equations.isOperator(equation.substring(equation.length - 1));
    } else {
      return false;
    }
  }

  static Color getButtonColor(String buttonText) {
    switch (buttonText) {
      case '+':
      case '-':
      case 'x':
      case '/':
      case '=':
        return operators;
      case 'AC':
        return clear;
      case 'Delete':
        return delete;
      default:
        return text;
    }
  }
}
