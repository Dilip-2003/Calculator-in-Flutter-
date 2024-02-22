import 'package:calculatorapp/mycolor/mycolor.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key, required this.textController
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      child: TextField(
        controller: textController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: MyColors.primaryColor,
        ),
        style: const TextStyle(fontSize: 50,),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}