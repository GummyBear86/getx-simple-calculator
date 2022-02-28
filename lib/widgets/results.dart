import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_calculator/constants/colors.dart';
import 'package:getx_simple_calculator/controllers/calculator_controller.dart';

class Results extends GetView<CalculatorControlller> {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Obx(
        () => Container(
          alignment: Alignment.bottomRight,
          child: Text(
            controller.equation.value,
            style: TextStyle(color: text, fontSize: 36, height: 1),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      // Obx(
      //   () => Container(
      //     alignment: Alignment.bottomRight,
      //     child: Text(
      //       controller.result.value,
      //       style: TextStyle(color: text, fontSize: 20),
      //       overflow: TextOverflow.ellipsis,
      //     ),
      //   ),
      // ),
    );
  }
}
