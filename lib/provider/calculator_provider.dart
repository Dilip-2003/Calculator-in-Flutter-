import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class MyCalculatorProvider extends ChangeNotifier{

  final computationController = TextEditingController();

  setValue(String value) {
    String computationalText = computationController.text;
    String deleteSymbol = String.fromCharCode(0x2326); 
    
    if(deleteSymbol == value){
        if (computationalText.isNotEmpty) {
            computationController.text = computationalText.substring(0, computationalText.length - 1);
          } else {
            computationController.text = "0";
          }
    }else{
        switch(value) {
          case "C":
            computationController.clear();
            break;
          case "X":
            computationController.text += "*";
            break;
          case "=":
            compute();
            break;
          default:
            computationController.text += value;
      }
    }
  }


  compute(){
    String computeText = computationController.text;
    if(computeText == ""){
      computationController.text = "0";
    }else{
    computationController.text = computeText.interpret().toDouble() % 1 !=0 ?  computeText.interpret().toDouble().toStringAsFixed(2): computeText.interpret().toDouble().toInt().toString() ;
    }
  }

  @override
  void dispose() {
    
    super.dispose();
    computationController.dispose();
  }

}