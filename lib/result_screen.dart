import 'package:flutter/material.dart';
import 'constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: kActiveColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: const TextStyle(fontSize: 25, color: Colors.greenAccent),
                  ),
                  const SizedBox(height: 10),
                  Text(bmiResult,
                      style: const TextStyle(
                          fontSize: 130, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 15),
                  Text('Normal BMI range:',
                      style: kLabelTextStyle.copyWith(fontSize: 30)),
                  const SizedBox(height: 10),
                  const Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomColor,
                width: double.infinity,
                height: 70,
                child: const Center(
                  child: Text(
                    'Re-Calculate BMI',
                    textAlign: TextAlign.center,
                    style: kLargeButtonTextStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
