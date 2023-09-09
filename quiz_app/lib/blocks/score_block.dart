import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ScoreBlock extends StatelessWidget {
   ScoreBlock({required this.grade});
int grade;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 290.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
            image: Image.asset('lib/assets/congratulation.jpg',fit: BoxFit.fill).image
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         const Text('Your final score is',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Container(
            alignment: Alignment.center,
            width: 180.w,height: 180.h,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.circle
            ),
            child: Text('${grade*10}%',
            style: TextStyle(fontSize:  60.sp,fontWeight: FontWeight.bold),),
          ),
        ],
      )
    );
  }
}
