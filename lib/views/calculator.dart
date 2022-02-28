import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_calculator/controllers/calculator_controller.dart';
import 'package:getx_simple_calculator/widgets/widgets.dart';

class Calculator extends GetView<CalculatorControlller> {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Simple Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Results()),
            Expanded(flex: 2, child: Buttons()),
          ],
        ),
      ),
    );
  }
}
