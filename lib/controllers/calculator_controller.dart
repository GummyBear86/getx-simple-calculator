import 'package:get/get.dart';
import 'package:getx_simple_calculator/widgets/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorControlller extends GetxController {
  RxString result = '0.0'.obs;
  RxString equation = ''.obs;
  RxBool shouldAppend = true.obs;

  void displayExpression(String buttonText) {
    equation.value = () {
      if (Equations.isOperator(buttonText) &&
          Equations.isOperatorAtEnd(equation.value)) {
        final newEquation =
            equation.value.substring(0, equation.value.length - 1);

        return newEquation + buttonText;
      } else if (shouldAppend.value) {
        return equation.value += buttonText;
      } else {
        return Equations.isOperator(buttonText)
            ? equation.value += buttonText
            : buttonText;
      }
    }();
    equation.value;
    shouldAppend.value = true;
    calculate();
  }

  void equals() {
    calculate();
    reCalculate();
  }

  void delete() {
    final equationText = equation.value;

    if (equationText.isNotEmpty) {
      final newEquation =
          equation.value.substring(0, equation.value.length - 1);

      if (newEquation.isEmpty) {
        reset();
      } else {
        equation.value = newEquation;
        calculate();
      }
    }
  }

  void calculate() {
    final expressionValue = equation.value.replaceAll('x', '*');

    try {
      Parser parser = Parser();
      ContextModel contextModel = ContextModel();
      Expression expression = parser.parse(expressionValue);
      result = '${expression.evaluate(EvaluationType.REAL, contextModel)}'.obs;
    } catch (error) {
      // Get.snackbar('Error', error.toString(),
      // snackPosition: SnackPosition.BOTTOM,
      // backgroundGradient: pride);
    }
  }

  void reset() {
    equation.value = '0';
    result.value = '0';
  }

  void reCalculate() {
    equation.value = result.value;
    shouldAppend.value = false;
  }
}
