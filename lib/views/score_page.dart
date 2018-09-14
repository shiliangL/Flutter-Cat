import 'package:flutter/material.dart';
import 'package:flutter_cat/views/landing_page.dart';


class ScorePage extends StatelessWidget{

  final int _score;
  final int _totalQuestions;
  ScorePage(this._score, this._totalQuestions);

  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.lightBlueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('your score is :', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0),),
          new Text(_score.toString()+ '/' + _totalQuestions.toString(),style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0),),
          new IconButton(
            icon: new Icon(Icons.replay),
            color: Colors.white,
            iconSize: 40.0,
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext contenx)=> new LandingPage()
              ));
            },
          )
        ],
      ),
    );
  }
}