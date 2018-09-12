import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;
  QuestionText(this._question,this._questionNumber);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new QuestionTextState();
  }
}

class QuestionTextState extends State<QuestionText> with TickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState(){
    super.initState();
    _fontSizeAnimationController = new AnimationController(duration: new Duration(milliseconds: 600),vsync: this);
    _fontSizeAnimation =  new CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.bounceInOut);
    _fontSizeAnimation.addListener(()=> this.setState((){}));
    _fontSizeAnimationController.forward();
  }

  @override

  void didUpateWidget(QuestionText oldWidget){
    super.didUpdateWidget(oldWidget);
    if(oldWidget._question != widget._question){
      _fontSizeAnimationController.reset();
      _fontSizeAnimationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 10.0),
        child: new Center(child: new Text(widget._questionNumber.toString() +':'+widget._question,
          style: new TextStyle(
            fontSize:_fontSizeAnimation.value*18,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
