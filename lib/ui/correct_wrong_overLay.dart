import 'dart:math';
import 'package:flutter/material.dart';

class CorrectWrongOverLay extends StatefulWidget{
  
  final bool _isCorrect;
  CorrectWrongOverLay(this._isCorrect);

  @override
  State<StatefulWidget> createState() {
      // TODO: implement createState
      return new CorrectWrongOverLayState();
    }
}

class CorrectWrongOverLayState extends State<CorrectWrongOverLay>  with SingleTickerProviderStateMixin{

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(duration: new Duration(seconds: 1),vsync: this);
    _iconAnimation =  new CurvedAnimation(parent: _iconAnimationController, curve: Curves.easeInOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.black45,
      child: new InkWell(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color:Colors.white,
                shape: BoxShape.circle
              ),
              child: new Transform.rotate(
                angle: _iconAnimation.value * 2 * pi,
                child: new Icon(widget._isCorrect ? Icons.done: Icons.clear, size: _iconAnimation.value * 80.0,),
              )
            ),
            new Padding(
              padding: new EdgeInsets.only(bottom:10.0),
            ),
            new Text(widget._isCorrect ? 'nice': 'keep try',style: new TextStyle(color:Colors.white,fontSize: 30.0),)
          ],
        )
      ),
    );
  }
}