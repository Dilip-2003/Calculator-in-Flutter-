import 'package:calculatorapp/mycolor/mycolor.dart';
import 'package:calculatorapp/provider/calculator_provider.dart';
import 'package:calculatorapp/widgets/buttons.dart';
import 'package:calculatorapp/widgets/calculate_button.dart';
import 'package:calculatorapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String del =  String.fromCharCode(0x2326);
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const  decoration = BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Consumer<MyCalculatorProvider>(
      builder: (context, provider, child) =>Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text('Calculator App',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w400),)),
        ),
      
        body: Column(
          children: [ 
             MyTextField(
              textController:provider.computationController,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 55),
              child: Container(
                height: screenHeight*.55,
                width: double.infinity,
                padding:  padding,
                decoration: decoration,
              
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

              
                     Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        const CustomButton(label: 'C',textColor: MyColors.secondaryColor,),
                        const CustomButton(label: '/',textColor: MyColors.secondaryColor,),
                        const CustomButton(label: 'X',textColor: MyColors.secondaryColor,),
                        CustomButton(label:del,textColor: MyColors.secondaryColor,),
                        
                      ],
                    ),                
                    const Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        CustomButton(label: '7',),
                        CustomButton(label: '8',),
                        CustomButton(label: '9',),
                        CustomButton(label: '-',textColor: MyColors.secondaryColor,),
                        
                      ],
                    ),
                    const Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        CustomButton(label: '4',),
                        CustomButton(label: '5',),
                        CustomButton(label: '6',),
                        CustomButton(label: '+',textColor: MyColors.secondaryColor,),
                        
                      ],
                    ),
      
                    const Row(
                      children: [ 
                      Expanded(
                          child: Column( 
                            children: [ 
                              Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    CustomButton(label: '1',),
                                    CustomButton(label: '2',),
                                    CustomButton(label: '3',),
                                  // CustomButton(label: '=',textColor: MyColors.secondaryColor,),
                        
                                ],
                              ),
                              SizedBox(
                                height: 20,
                               ),
                              Row( 
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    CustomButton(label: '%',),
                                    CustomButton(label: '0',),
                                    CustomButton(label: '.',),
                                  // CustomButton(label: '=',textColor: MyColors.secondaryColor,),
                        
                                ],
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 25,width: 10,),
                      CustomCalculateButton(),                       
                      ],
                    )
                  ],
                ),
              ),
            )
      
          ],
        ),
      ),
    );
  }
}

