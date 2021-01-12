


import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'ContainerFile.dart';
import 'constantFile.dart';
import 'input_page.dart';

class ResultScreen  extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultScreen({ @required this.bmiResult, this.resultText, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
              child: Center(
                child: Text('YOUR RESULT',
                style: kTitleStyle,)
              ),
            ),
            ),
            Expanded(
              flex: 7,
                child: RepeatContainerCode(
                    colors: activeColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                    style: kResultStyle,),
                    Text(bmiResult,
                    style: kNumberStyle ,
                    ),
                    Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kIndicationStyle,
                    ),
                  ],
                ),),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder :(context)=> InputPage()));
                },
                child: Container(
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top:  10.0),
                  width: double.infinity,
                  height: 50.0,
                  child: Center(
                    child: Text('RE CALCULATE',
                        style: kButtonStyle),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
