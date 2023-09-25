import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/travel_model.dart';



class CategoryBlock extends StatelessWidget {
  final Data data;
  final Color color;

  CategoryBlock({required this.data,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color:color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color:Colors.white54
            ),
            child: Image.network(data.image!,
              width: 50.w,height: 50.h,),
          ),
          Text(data.categoryName!,
          style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade300),)
        ],
      ),
    );
  }
}
