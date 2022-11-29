import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz/quixapp.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.marksObtained});
  int marksObtained;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Result',
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: new CircularPercentIndicator(
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: marksObtained > 3 ? Colors.green : Colors.orange,
                radius: 70.0,
                lineWidth: 13.0,
                animation: true,
                percent: marksObtained / 4,
                center: new Text(
                  " $marksObtained/4",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
          ),
          marksObtained > 2
              ? Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Success!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Failed...',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              '    ',
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Quizpage1()));
              },
              child: Text(
                'Try agin',
                selectionColor: Colors.blue,
              ))
        ],
      ),
    );
  }
}
