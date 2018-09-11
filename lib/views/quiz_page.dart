import 'package:flutter/material.dart';
import 'package:flutter_cat/ui/answers_button.dart';
import 'package:flutter_cat/ui/question_text.dart';
import 'package:flutter_cat/ui/correct_wrong_overLay.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new  AnswersButton(true,(){ print('对了');}),
            new QuestionText('天空是什么颜色',1),
            new  AnswersButton(false,(){ print('错了');}),
        ]),
        new CorrectWrongOverLay(true)
      ],
    );
  }
}
