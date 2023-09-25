import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:travel_app/screens/user_screen.dart';



class LockTaggleBlock extends StatelessWidget {
  const LockTaggleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      width: 320.w,
      child: SwipeButton.expand(
        height: 90,
        thumbPadding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
        borderRadius: BorderRadius.circular(20.r),
        thumb: const Icon(
          Icons.keyboard_double_arrow_right_outlined,
          color: Colors.white,
        ),
        activeThumbColor: Colors.black.withOpacity(0.8),
        activeTrackColor: Colors.black54.withOpacity(0.3),
        onSwipe: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => UserScreen()));        }
        ,
        child:  const Text(
          "Swipe to Explore Now",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
