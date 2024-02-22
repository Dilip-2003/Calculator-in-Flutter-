
import 'package:calculatorapp/mycolor/mycolor.dart';
import 'package:calculatorapp/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCalculateButton extends StatelessWidget {
  const CustomCalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 160,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyColors.secondaryColor,
          ),
          child: const Center(child: Text('=',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800),)),
        ),
    
        
        onTap: () {
          Provider.of<MyCalculatorProvider>(context,listen:  false,).setValue('=');
        },
    );
  }
}

