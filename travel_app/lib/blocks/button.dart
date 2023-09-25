import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyButton extends StatelessWidget {
  Color background,textColor;

  MyButton({required this.background,required this.textColor,required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){},
      style: ElevatedButton.styleFrom(
        side: BorderSide(color:const Color(0xffc05e2b),width: 2.w),
        elevation: 0,
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        fixedSize: Size(150.w, 60.h),
        backgroundColor:background
      ),
        child: Text(text,
          style: TextStyle(
            fontSize: 20.sp,
            color: textColor
          ),
        ),
    );
  }
}
