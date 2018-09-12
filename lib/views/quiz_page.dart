import 'package:flutter/material.dart';
import 'package:flutter_cat/ui/answers_button.dart';
import 'package:flutter_cat/ui/question_text.dart';
import 'package:flutter_cat/ui/correct_wrong_overLay.dart';
import 'package:flutter_cat/util/quesstion.dart';
import 'package:flutter_cat/util/quiz.dart';
import 'package:flutter_cat/views/score_page.dart';



class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  Question currentquestion;
  Quiz quiz =  new Quiz([
     new Question('Its a fine day today?', true),
     new Question('The earth is round?', true),
     new Question('Do you like hamburgers?', false),
  ]);

  String questionText; 
  int questionNumber;
  bool isCurrent;
  bool isOverLayVisiable = false;

  @override
  void initState(){
    super.initState();
    currentquestion = quiz.nextQuestion;
    questionText  = currentquestion.question;
    questionNumber = quiz.questionsNumbers;
  }

  void handleAnwser(bool answer){
    isCurrent = (currentquestion.answer == answer);
    quiz.anwser(isCurrent);
    this.setState((){
      isOverLayVisiable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new  AnswersButton(true,(){ handleAnwser(true);}),
            new QuestionText(questionText,questionNumber),
            new  AnswersButton(false,(){ handleAnwser(false);}),
        ]),
        isOverLayVisiable ? new CorrectWrongOverLay(isCurrent,(){
          if (quiz.length == questionNumber) {
            // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext contenx)=> new ScorePage(quiz.score,quiz.length)));
            Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
              builder: (BuildContext contenx)=> new ScorePage(quiz.score,quiz.length)
            ), (Route route)=> route == null);
            return;
          }
          currentquestion = quiz.nextQuestion;
           this.setState((){
              isOverLayVisiable = false;
              questionText  = currentquestion.question;
              questionNumber = quiz.questionsNumbers;
          });
        }) : new Container()
      ],
    );
  }
}
