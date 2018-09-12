import 'package:flutter/material.dart';
import 'package:flutter_cat/views/quiz_page.dart';

class LandingPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: ()=> Navigator.push(context, new MaterialPageRoute(
          builder: (BuildContext contenx)=> new QuizPage()
        )),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            new Text('lets Start',style: new TextStyle(color: Colors.white,fontSize:50.0,fontWeight: FontWeight.bold)),
            new Text('Tap to start',style: new TextStyle(color: Colors.white,fontSize:20.0,fontWeight: FontWeight.bold))
          ]
        )
      ),
    );
  }
}