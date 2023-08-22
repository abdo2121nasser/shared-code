import 'package:flutter/material.dart';
import 'package:taskes/screens/screen1.dart';
void main()
{
  runApp(Task());
}

class Task extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
