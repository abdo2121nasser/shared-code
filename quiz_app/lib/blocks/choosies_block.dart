import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChoosiesBlock extends StatelessWidget {
   ChoosiesBlock({required this.text,required this.index,required this.flage});
String text;
int index;
bool flage;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: flage? Colors.greenAccent : Colors.transparent,
      child: Row(
        children: [
          Container(
        alignment: Alignment.center,
            margin: EdgeInsets.only(left: 15.sp,right: 15.sp),
            constraints: BoxConstraints(
              maxWidth: 30.sp,
                maxHeight: 30.sp,
                minWidth: 24.w,
                minHeight: 24.h
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurpleAccent
            ),
            child: Text('${index+1}',
              style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
          ),
          Text(text,
            style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
