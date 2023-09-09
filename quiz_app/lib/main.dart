import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/screens/exam_screen.dart';
import 'package:quiz_app/screens/levels_screen.dart';
import 'package:quiz_app/screens/openning_Screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

void main() {
 runApp(QuizeApp());

}



class QuizeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          routes: {
            OpenningScreen.id:(context)=>OpenningScreen(),
            Levels.id:(context)=>Levels(),
            ExamScreen.id:(context)=>ExamScreen(levelNumber: 0),
            ResultScreen.id:(context)=>ResultScreen(grade: -1,levelNumber: -1),
          },
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home:OpenningScreen(),
        );
      },
    );
  }
}


