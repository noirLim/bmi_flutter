// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constansts.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.interpretation, required this.bmiResult, required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:
                Container(child: Text('Your Result', style: kTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: resultTextStyle),
                    Text(bmiResult, style: kBmiTextStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(interpretation,
                          textAlign: TextAlign.center, style: kBodyTextStyle),
                    )
                  ],
                )),
          ),
          BottomButton(onTap:(){
            Navigator.pop(context);
          }, buttonTitle: 'RECALCULATE')
        ],
      ),
    );
  }
}
