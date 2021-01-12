

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Calculator{
  final int height;
  final int weight;
  double bmiResult;
  Calculator({@required this.height, this.weight});
  String CalculateBMI()
  {
    bmiResult= weight/pow(height/100, 2);
    return bmiResult.toStringAsFixed(1);
  }

  String getResult(){
    if(bmiResult>= 25){
      return 'overweight' ;
    }
    else if( bmiResult >= 18.5){
      return 'normal' ;
    }
    else
      {
        return 'underweight';
      }

  }


  String getInterpretations(){
    if(bmiResult>= 25){
      return 'You have a higher weight than normal' ;
    }
    else if( bmiResult >= 18.5){
      return 'You have a normal body weight.. GOOD JOB' ;
    }
    else
    {
      return 'You have a lower than normal body weight. You can eat more';
    }

  }








}