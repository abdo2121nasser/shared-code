import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_managment/model/api.dart';


class ItemBlock extends StatelessWidget {
   ItemBlock({required this.data,required this.flage});
final Categories data;
final bool flage;
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.symmetric(horizontal: 20.sp),
      decoration: BoxDecoration(
        color: Colors.grey.shade300.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20.r)
      ),
      height: 120.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         SizedBox(
           child: Row(
             children: [
               Container(
                 width: 150.w,height: 100.h,
                 decoration: BoxDecoration(
                     color: Colors.transparent,
                     borderRadius: BorderRadius.circular(25),
                     image: DecorationImage(
                         image:  Image.asset('lib/assets/Ramen-Images.jpeg',fit: BoxFit.fill,).image
                     )
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.only(left: 10.sp),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text('${data.name}',
                       style: TextStyle(fontSize: 15.sp,color: Colors.black87.withOpacity(0.7)),),
                     SizedBox(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                               Text('\$${data.remind}',
                                 style: TextStyle(fontSize: 20.sp,color: Colors.black87,fontWeight: FontWeight.bold),),
                               Text(' / \$${data.total}',
                                   style: TextStyle(fontSize: 20.sp,color: Colors.black87.withOpacity(0.7),))
                             ],
                           ),
                           Padding(
                             padding:  EdgeInsets.only(top: 7.sp),
                             child: Text('- \$${data.total! - data!.remind!}',
                               style: TextStyle(fontSize: 15.sp,color: Colors.red,fontWeight: FontWeight.bold),),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ],
           ),
         ),
          Align(alignment: Alignment.topRight,
              child: Padding(
                padding:  EdgeInsets.only(top: 11.sp,right: 20.sp),
                child: Icon(!flage?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up_rounded),
              ))
        ],
      ),

    );
  }
}
