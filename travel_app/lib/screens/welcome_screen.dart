import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/blocks/lock_taggle_block.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDCBAB),
      body:  Padding(
        padding:  EdgeInsets.only(left: 10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            SizedBox(height: 50.sp,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Explore Beauty of Journey',
                 style: TextStyle(color: Colors.black,fontSize: 45.sp,fontWeight: FontWeight.bold),),
               Padding(
                 padding: EdgeInsets.only(top: 5.sp),
                 child: Text('Everything you can imagine, is here',
                   style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 15.sp),),
               ),
             ],
           ),
        const Spacer(flex: 1,),
         Padding(
           padding: EdgeInsets.only(bottom: 20.sp),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               LockTaggleBlock(),
               Padding(
                 padding:  EdgeInsets.only(top: 10.sp),
                 child: Text('Privacy Policy',
                   style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 15.sp),),
               ),
             ],
           ),
         )
          ],
        ),
      )

    );
  }
}
