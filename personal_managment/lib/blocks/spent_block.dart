import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/api.dart';

class SpentBlock extends StatelessWidget {
   SpentBlock({required this.data});
Data data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.sp),
     height: 160.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
Text("You 'ev already spent",
style: TextStyle(color: Colors.black87,fontSize: 25.sp,),),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20.r),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 170.w,
                             maxHeight: 70.h
              ),
               width: 170.w,
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Padding(
                 padding:  EdgeInsets.only(left: 5.sp,right: 5.sp),
                 child: Image.asset('lib/assets/banknotes.png',width: 40.w,height: 40.h,),
               ),
                  Expanded(
                    child: Text("\$${data.allSpent}",
                      style: TextStyle(color: Colors.black87,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
          Text("and there 's stil 18 days left until payday",
            style: TextStyle(color: Colors.black87.withOpacity(0.7),fontSize: 15.sp,),),
        ],
      ),
    );
  }
}
