import 'package:flutter/material.dart';
import 'package:navoiy_app/test/components/AnswerText.dart';

class AnswerButton extends StatelessWidget {
  final bool isQuizStarted;
  final Function checkAnswer;
  final String optionText;
  final double screenWidth;

  AnswerButton(
      this.optionText, this.isQuizStarted, this.checkAnswer, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(50.0),
        child: MaterialButton(
          minWidth: screenWidth,
          onPressed: isQuizStarted ? () => checkAnswer("$optionText") : null,
          color: Colors.orange[300],
          height: 50.0,
          child: AnswerText("$optionText", screenWidth),
        ),
      ),
    );
  }
}
