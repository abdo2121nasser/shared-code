import 'package:flutter/material.dart';
import 'package:one_hundred_nine/screen/car_detail_screen/car_datail_screen.dart';
import 'package:one_hundred_nine/screen/car_home_screen/car_home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CarHomeScreen(),
      ),
    );
  }
}
