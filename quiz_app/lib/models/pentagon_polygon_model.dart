import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Pentagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(10.sp, size.height * 1 / 3),
      Offset(size.width / 2, 0),
      Offset(size.width-10.w, size.height * 1 / 3),
      Offset(size.width * 4 / 5, size.height-20.h),
      Offset(size.width * 1 / 5, size.height-20.h),
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}