import 'package:calculatorapp/mycolor/mycolor.dart';
import 'package:calculatorapp/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.label, this.textColor = Colors.white,
  });
  final String label;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Material(
        elevation: 10,
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(35),
        child:  CircleAvatar(
          radius: 35,
          backgroundColor: MyColors.secondary2Color,
          child: Text(
              label,
            style: TextStyle(
            color: textColor,
            fontSize: 35,
            fontWeight: FontWeight.w800),),
        ),
      ),
      onTap: () {
        Provider.of<MyCalculatorProvider>(context,listen: false).setValue(label);
      },
    );
  }
}

