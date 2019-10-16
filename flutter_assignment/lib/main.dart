import 'package:flutter/material.dart';

import './MyText.dart';
import './TextControl.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  String _textValue = 'This is inital text value';

  void changeText() {
    setState(() {
      _textValue = 'This is new text value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is an AppBar'),
        ),
        body: Column(
          children: <Widget>[
            MyText(_textValue),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}
