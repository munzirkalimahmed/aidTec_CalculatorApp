import 'dart:async';

import 'package:flutter/material.dart';

import 'calculator_app.dart';


class SplashServices{
  void isLogin(BuildContext context){
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorApp())));
  }
}