import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  final bool _anwser;
  final VoidCallback _onTap;
  AnswersButton(this._anwser, this._onTap);
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
      color: _anwser ? Colors.greenAccent : Colors.redAccent,
      child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
              child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      color:Colors.white,
                      width: 4.0
                    )
                  ),
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(_anwser ? '答对了' : '答错了',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      )
                  )
              )
          )
      ),
    ));
  }
}
