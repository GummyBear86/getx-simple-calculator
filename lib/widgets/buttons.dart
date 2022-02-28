import 'package:flutter/material.dart';
import 'package:getx_simple_calculator/constants/colors.dart';
import 'package:getx_simple_calculator/widgets/widgets.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
        color: buttonsBackground,
      ),
      child: Column(
        children: [
          buttonRows('AC', 'Delete', '', '/'),
          buttonRows('7', '8', '9', 'x'),
          buttonRows('4', '5', '6', '-'),
          buttonRows('1', '2', '3', '+'),
          buttonRows('0', '', '.', '='),
        ],
      ),
    );
  }
}
