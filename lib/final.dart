import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'result_page.dart';
import 'dart:math';
class CalculateBrain{
  CalculateBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String getCalculate(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi >= 18.3){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getMessage(){
    if(_bmi >= 25){
      return 'Take Fast Daily More and More ';
    }else if(_bmi >= 18.3){
      return 'Very Good Health, Keep Momentum';
    }else{
      return 'Daily Eat 6 Time For More Weight';
    }
  }
}