

import 'package:calculator_app_new/constant/colors.dart';
import 'package:calculator_app_new/provider/cal_provider.dart';
import 'package:calculator_app_new/screens/home_screen.dart';
import 'package:calculator_app_new/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(CaluclatorApp());
}

class CaluclatorApp extends StatelessWidget {
  const CaluclatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

