import 'package:flutter_cat/util/quesstion.dart';
class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions){
    _questions.shuffle();
  }
  
  int get score => _score;
  int get length => _questions.length;
  int get questionsNumbers => _currentQuestionIndex+1;
  List get questions => _questions;

  Question get nextQuestion{
    _currentQuestionIndex++;
    if (_currentQuestionIndex> length) return null;
    return _questions[_currentQuestionIndex];
  }

  void anwser( bool isCorrect){
    if (isCorrect) _score++;
  }
}