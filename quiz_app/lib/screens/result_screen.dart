import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/screens/exam_screen.dart';

import '../blocks/score_block.dart';
import 'levels_screen.dart';



class ResultScreen extends StatelessWidget {
  int grade,levelNumber;
  static String id='result screen';

  ResultScreen({required this.grade,required this.levelNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1F1147),
        appBar: AppBar(

          backgroundColor: const Color(0xff1F1147),
          elevation: 0,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pushNamed(context, Levels.id);
          },
              icon: Icon(Icons.arrow_circle_left_sharp
                , color: Colors.deepPurple, size: 35.sp,)
          ),
          centerTitle: true,
          title: Text('Results',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold
                , color: Colors.greenAccent),),
        ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left:20.sp,bottom: 20.sp,top: 20.sp),
          child: Text('Total Correct answers',
          style: TextStyle(fontSize: 20.sp),),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20.sp),
          child: Text('$grade out of 10 Questions',
            style: TextStyle(fontSize: 20.sp,color: Colors.greenAccent),),
        ),
       const Spacer(flex: 1,),
             Align(alignment: Alignment.center,
                 child: ScoreBlock(grade: grade)),
     const   Spacer(flex: 1,),

        Align(alignment: Alignment.center
          ,
          child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: ()
            {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExamScreen(levelNumber: levelNumber)));
            },
            child: Container(
              width: 290.w,height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.indigo.shade500
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 10.sp),
                    child: const Icon(Icons.recycling,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text('Try Again',
                  style: TextStyle(fontSize: 25.sp),)
                ],
              ),
            ),
          ),
        ),
       const Spacer(flex: 1,),

      ],
    ),
    );
  }
}
