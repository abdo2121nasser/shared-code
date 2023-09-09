import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class QuestionBlock extends StatelessWidget {
 String text,image;

 QuestionBlock({required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.sp),
      child: Column(
        children: [
          Text(text,
          style: TextStyle(fontSize: 18.sp,color: Colors.white),),
          Container(
            margin: EdgeInsets.only(top: 10.sp),
            width: 360.w,
            height: 220.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image)
                )
            ),

          )
        ],
      ),
    );
  }
}
