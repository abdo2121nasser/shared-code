import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/data_base/SqlDataBase.dart';
import 'package:quiz_app/screens/exam_screen.dart';

import '../models/pentagon_polygon_model.dart';
class LevelButton extends StatelessWidget {
String levelNumber,lock,grade;
int getGrade()
  {

  if(int.parse(grade)>=5 && int.parse(grade)<=7)
  {
    return 1;
  }
  else if(int.parse(grade)>7 && int.parse(grade)<=9)
  {
    return 2;
  }
  else if(int.parse(grade)==10 )
  {
    return 3;
  }
  else return 0;
}

LevelButton({required this.levelNumber,required this.lock,required this.grade});
var read=   SqlDataBase().readData('SELECT * FROM levels');
  @override
  Widget build(BuildContext context) {
   double opicity()
   {
     if(lock=='true' ) return 0;
     else return 0.9;

   }
    Color generateRandomColor2() {
      Random random = Random();
      // Pick a random number in the range [0.0, 1.0)
      double randomDouble = random.nextDouble();

      return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
    }


    return SizedBox(
      height: 170.h,
      child: Column(
        children: [
          SizedBox(
            height: 38.h,
            width: 150.w,
            child: Padding(
              padding:  EdgeInsets.only(left: 27.sp),
              child: Row(
                children: [
                  Icon(
                    getGrade()>=1? Icons.star : Icons.star_border_sharp ,color: Colors.orangeAccent,size: 25.sp,),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 20.sp,left: 10.sp,right: 10.sp,),
                    child: Icon(
                      getGrade()>=2? Icons.star : Icons.star_border_sharp,color: Colors.orangeAccent,size: 25.sp,),
                  ),
                  Icon(
                    getGrade()==3? Icons.star : Icons.star_border_sharp,color: Colors.orangeAccent,size: 25.sp,)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()
            {
            if(opicity()!=0.9)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ExamScreen(levelNumber: int.parse(levelNumber))));
              }


            },
            customBorder:  CircleBorder(),
            child: Stack(
              children: [
                SizedBox(
                  width: 120.w,
                  height: 120.h,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: Pentagon(),
                        child: Container(
                          width: 120.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                              color: generateRandomColor2(),
                              image: DecorationImage(opacity: 0.7,
                                  fit: BoxFit.fill,
                                  image: AssetImage('lib/assets/purpel.jpg')
                              )
                          ),

                        ),

                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*1/20,
                        left: MediaQuery.of(context).size.width*1/11,
                        child: Container(
                          child: Column(
                            children: [
                              Text('Levels',
                                style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('$levelNumber',
                                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.white)),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                Positioned(
                  bottom: 50.sp,
                  right: 43.sp,
                    child: Icon(Icons.lock,size: 30.sp,color: Colors.orangeAccent.withOpacity(opicity()),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    ) ;
  }
}
