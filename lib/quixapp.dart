import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz/resultpage.dart';
//import 'package:quizapplication/Condrooler/Apiconection.dart';
//import 'package:quizapplication/resultpage.dart';
//import 'Condrooler/Apiapplication.dart';
//import 'dart:async';

class Quizpage1 extends StatefulWidget {
  const Quizpage1({super.key});

  @override
  State<Quizpage1> createState() => _Quizpage1State();
}

class _Quizpage1State extends State<Quizpage1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();
  }

  int marksEarned = 0;
  int selectedOption = 0;
  void markForAnswers() {
    if (index == 1) {
      if (selectedOption == 1) {
        marksEarned++;
      }
    }
    if (index == 2) {
      if (selectedOption == 2) {
        marksEarned++;
      }
    }
    if (index == 3) {
      if (selectedOption == 3) {
        marksEarned++;
      }
    }
    if (index == 4) {
      if (selectedOption == 4) {
        marksEarned++;
      }
    }
  }

  List<String> questions = [
    '',
    'Which of the following technology used by zomato for food delivery ?',
    'Which of the is included in computer system?',
    'who is father of Ai?',
    'father of c language?',
  ];
  int index = 1;
  List<String> questionsOptions1 = [
    '',
    '            Drone',
    '            3D printer',
    '            VR Box',
    '            Amazon Alexa',
  ];
  List<String> questionsOptions2 = [
    '',
    '            bill gates',
    '            CPU',
    '            peripheral divice',
    '            Non-Volatile',
  ];
  List<String> questionsOptions3 = [
    '',
    '            Alan Turing',
    '            Marvin minsky',
    '            John McCarthy',
    '            Ray Kurzweil',
  ];
  List<String> questionsOptions4 = [
    '',
    '            Ken Thompson',
    '            Brian Kernighan',
    '           Bjarne strousttrup',
    '            Dennis Ritchie',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Quiz',
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {
              if (index > 1) {
                index = index - 1;
              }
            });
          },
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,
          //size: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 182, 179, 179),
                    blurRadius: 2.0,
                    offset: Offset(0, 5))
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                  child: Text(
                "$index/4",
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Text(
              questions[index],
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 25,
            endIndent: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 182, 179, 179),
                      blurRadius: 2.0,
                      offset: Offset(0, 5)),
                ], color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    "?",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Choose an answer",
                style: TextStyle(
                    color: Color.fromARGB(255, 46, 44, 44),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: selectedOption == 1 ? Colors.black : Colors.blue),
                onPressed: () {
                  setState(() {
                    selectedOption = 1;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      "A.",
                      style:
                          TextStyle(color: Color.fromARGB(255, 211, 186, 186)),
                    ),
                    Text(questionsOptions1[index])
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: selectedOption == 2 ? Colors.black : Colors.blue),
                onPressed: () {
                  setState(() {
                    selectedOption = 2;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      "B.",
                      style:
                          TextStyle(color: Color.fromARGB(255, 211, 186, 186)),
                    ),
                    Text(questionsOptions2[index])
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: selectedOption == 3 ? Colors.black : Colors.blue),
                onPressed: () {
                  setState(() {
                    selectedOption = 3;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      "C.",
                      style:
                          TextStyle(color: Color.fromARGB(255, 211, 186, 186)),
                    ),
                    Text(questionsOptions3[index])
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: selectedOption == 4 ? Colors.black : Colors.blue),
                onPressed: () {
                  setState(() {
                    selectedOption = 4;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      "D.",
                      style:
                          TextStyle(color: Color.fromARGB(255, 211, 186, 186)),
                    ),
                    Text(questionsOptions4[index])
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 200),
              child: SizedBox(
                height: 50,
                width: 90,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      print('iiiii' + index.toString());
                      setState(() {
                        markForAnswers();
                        print(marksEarned);
                        selectedOption = 0;
                        if (index < 4) {
                          index++;
                        } else if (index == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultPage(
                                        marksObtained: marksEarned,
                                      )));
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void fetchAlbum() {}
}
