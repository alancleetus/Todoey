import 'package:flutter/cupertino.dart';

class Task {
  String text;
  bool isDone;

  Task({@required this.text, this.isDone = false});
  void toggle() => isDone = !isDone;
}
