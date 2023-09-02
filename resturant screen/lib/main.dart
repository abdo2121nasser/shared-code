import 'package:flutter/material.dart';
import 'package:resturant_screen/screens/screen1.dart';

void main() {
  runApp(ResturantScreen());
}


class ResturantScreen extends StatelessWidget {
  const ResturantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen1(),
      ),
    );
  }
}
