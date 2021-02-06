import 'dart:math';

import 'package:flutter/material.dart';

import 'components/AnswerButton.dart';
import 'components/HeadingText.dart';
import 'components/QuestionText.dart';
import 'ques.dart';

//APP CONSTANTS
var _THEME_COLOUR_ = const Color(0xffF0A821);

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int totalQues = 10;
  int solvedQues = 0;
  String nextQue = "";
  String quiz_status = "BOSHLASH";
  String score = "";
  String op1, op2, op3, op4, answer;
  bool isQuizStarted = false;
  int finalScore = 0;
  List<int> solvedQuesIndexes = [];

  void check_ans(String value) {
    print(value);
    setState(() {
      solvedQues += 1;
      if (value == answer) {
        finalScore += 1;
      }
      if (solvedQues == 10) {
        isQuizStarted = false;
        score = "NATIJA: $finalScore/$totalQues";
        nextQue = "";
        op1 = "";
        op2 = "";
        op3 = "";
        op4 = "";
      } else {
        var index = Random().nextInt(QUES.length);
        while (solvedQuesIndexes.contains(index)) {
          index = Random().nextInt(QUES.length);
        }
        solvedQuesIndexes.add(index);
        List<String> ans = QUES[index]['answers'];
        nextQue = QUES[index]['question'];
        op1 = ans[0];
        op2 = ans[1];
        op3 = ans[2];
        op4 = ans[3];
        answer = ans[QUES[index]['correctIndex']];
      }
    });
  }

  void start_quiz() {
    print("In");
    setState(() {
      finalScore = 0;
      solvedQues = 0;
      isQuizStarted = true;
      score = "";
      quiz_status = "BOSHIDAN BOSHLASH";
      solvedQuesIndexes = [];
      var index = Random().nextInt(QUES.length);
      while (solvedQuesIndexes.contains(index)) {
        index = Random().nextInt(QUES.length);
      }
      solvedQuesIndexes.add(index);
      List<String> ans = QUES[index]['answers'];
      nextQue = QUES[index]['question'];
      op1 = ans[0];
      op2 = ans[1];
      op3 = ans[2];
      op4 = ans[3];
      answer = ans[QUES[index]['correctIndex']];
    });
  }

  // String nextque = "Whats is the scientific name of a butterfly?";
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _THEME_COLOUR_,
        title: Text(
          "TEST",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      // backgroundColor: _THEME_BG_COLOUR_,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  HeadingText(
                    "Savollar: $solvedQues/$totalQues".toUpperCase(),
                  ),
                  QuestionText("$nextQue", screen_width),
                  //Answer Button
                  Column(
                    children: <Widget>[
                      AnswerButton(op1, isQuizStarted, check_ans, screen_width),
                      AnswerButton(op2, isQuizStarted, check_ans, screen_width),
                      AnswerButton(op3, isQuizStarted, check_ans, screen_width),
                      AnswerButton(op4, isQuizStarted, check_ans, screen_width),
                    ],
                  ),
                  HeadingText("$score".toUpperCase()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(50.0),
                      child: MaterialButton(
                        onPressed: start_quiz,
                        color: Colors.orange[100],
                        minWidth: screen_width,
                        height: 50.0,
                        child: Text(
                          "$quiz_status",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
