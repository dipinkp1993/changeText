// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

void main() {
  runApp(MyAssignment());
}

class MyAssignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAssignmentState();
  }
}

class _MyAssignmentState extends State<MyAssignment> {
  var _textIndex = 0;
  final _texts = ['s da', 'ila da', 'no da', 'aa para', 'ayyo vayye'];

  void changeText() {
    setState(() {
      _textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: changeText,
                child: Text('change Text'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                _texts[_textIndex],
                textAlign: TextAlign.center,
              ),
            ),
            /* Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                "Text2",
                textAlign: TextAlign.center,
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
