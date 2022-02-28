import 'package:flutter/material.dart';
import 'package:getx_simple_calculator/constants/colors.dart';
import 'package:getx_simple_calculator/widgets/widgets.dart';

class SpecificButtons extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const SpecificButtons({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double fontsize =
        Equations.isOperator(buttonText, hasEquals: true) ? 18 : 20;
    final color = Equations.getButtonColor(buttonText);
    final style = TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
    );
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: double.infinity,
        child: ElevatedButton(
          child: buttonText == 'Delete'
              ? Icon(
                  Icons.arrow_back,
                  color: color,
                )
              : Text(
                  buttonText,
                  style: style,
                ),
          style: ElevatedButton.styleFrom(
            primary: buttonsBackground,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
