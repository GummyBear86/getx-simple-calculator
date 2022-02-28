import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_calculator/controllers/binding/calculator_binding.dart';
import 'package:getx_simple_calculator/views/calculator.dart';

void main() =>
  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice BMI Calculator using Getx',
      theme: ThemeData.dark(),
      initialBinding: CalculatorBinding(),
      home: Calculator(),
    );
  }
}
