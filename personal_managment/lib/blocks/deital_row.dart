import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/api.dart';



class DetailRow extends StatelessWidget {
   DetailRow({required this.data});
  ListDetails data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 10.sp),
            child: Icon(Icons.shop),
          ),
          Text('${data.name}',
          style: TextStyle(fontSize: 20.sp,color: Colors.black87),),
          Spacer(flex: 1,),
          Text('${data.price}\$',
            style: TextStyle(fontSize: 20.sp,color: Colors.black87),),

        ],
      ),
    );
  }
}
