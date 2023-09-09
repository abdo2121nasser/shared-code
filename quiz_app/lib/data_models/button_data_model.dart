import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/screens/levels_screen.dart';

class ButtonDataModel
{
  double width, height,textSize;
  Color textColor,background;
  double borderRadius;
  ButtonDataModel({
    required this.borderRadius,
    required this.width,
    required this. height,
    required this.textSize,
    required this.textColor,
    required this.background
  });
}
List<ButtonDataModel> buttonData=[
  ButtonDataModel(borderRadius: 20,
      width: 270.w,
      height:70.h,
      textSize:25.sp,
      textColor:Colors.white,
      background:Colors.indigo.shade700),
  ButtonDataModel(
      borderRadius: 20.r,
      width: 270.w,
      height:70.h,
      textSize:25.sp,
      textColor: Colors.deepPurple,
      background:Color(0xff1F1147)),
  ButtonDataModel(
      borderRadius: 10,
      width: 110.w,
      height:40.h,
      textSize:15.sp,
      textColor: Colors.white,
      background:Colors.indigo.shade500),
  ButtonDataModel(
      borderRadius: 10,
      width: 110.w,
      height:40.h,
      textSize:15.sp,
      textColor: Colors.white,
      background:Colors.indigo.shade500),


];