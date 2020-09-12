import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  String text;
  Function onPressed;

  HomeButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      color: Colors.blue,
      textColor: Colors.white,
      splashColor: Colors.blueGrey,
      onPressed: onPressed,
    );
  }
}
