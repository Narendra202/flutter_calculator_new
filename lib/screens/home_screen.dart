

import 'package:calculator_app_new/constant/colors.dart';
import 'package:calculator_app_new/provider/cal_provider.dart';
import 'package:calculator_app_new/screens/widgets_data.dart';
import 'package:calculator_app_new/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../widgets/cal_button.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return  Consumer<CalculatorProvider>(
      builder: (context,provider, _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Calculator App', style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.black,

          ),
          body: Column(
            children: [
              CustomTextField(controller : provider.compController),
              Spacer(),
              Container(
                height: screenHeight  * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                           List.generate(4, (index) => buttonList[index])
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          List.generate(4, (index) => buttonList[index + 4])
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          List.generate(4, (index) => buttonList[index + 8])
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    List.generate(3, (index) => buttonList[index + 12])
                                ),
                                SizedBox(height: 30,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    List.generate(3, (index) => buttonList[index + 15])
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 50,),
                          CalculateButton(),
                        ],
                      )
                    ],
                  )
              ),


            ],
          ),
        );
      }
    );
  }
}
