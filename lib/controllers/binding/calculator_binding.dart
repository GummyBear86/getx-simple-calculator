import 'package:get/get.dart';
import 'package:getx_simple_calculator/controllers/calculator_controller.dart';

class CalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculatorControlller());
  }
}
