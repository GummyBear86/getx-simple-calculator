import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_calculator/controllers/calculator_controller.dart';
import 'package:getx_simple_calculator/widgets/widgets.dart';

Widget buttonRows(String first, second, third, fourth) {
  final List row = [first, second, third, fourth];

  final CalculatorControlller _controller = Get.find<CalculatorControlller>();

  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: row
          .map(
            (buttonText) => SpecificButtons(
                buttonText: buttonText,
                onPressed: () {
                  switch (buttonText) {
                    case '=':
                      _controller.equals();
                      break;
                    case 'Delete':
                      _controller.delete();
                      break;
                    case 'AC':
                      _controller.reset();
                      break;
                    default:
                      _controller.displayExpression(buttonText);
                      break;
                  }
                }),
          )
          .toList(),
    ),
  );
}
