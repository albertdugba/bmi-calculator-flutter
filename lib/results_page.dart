import 'package:flutter/material.dart';
import 'package:flutter_module/utils/constants.dart';
import 'package:flutter_module/utils/utils.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interPretation;

  const ResultsPage({this.bmiResult, this.resultText, this.interPretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your results',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(bmiResult, style: kResultsTextStyle),
                    Text(interPretation,
                        textAlign: TextAlign.center, style: kBmiTextStyle),
                    Text(resultText.toUpperCase(),
                        textAlign: TextAlign.center, style: kBodyTextStyle)
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            )
          ],
        ));
  }
}
