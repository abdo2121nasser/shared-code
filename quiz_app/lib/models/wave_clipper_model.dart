import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWave extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-40);// start path

    path.quadraticBezierTo(70,size.height, 130, size.height-40);
    path.quadraticBezierTo(180,size.height-65,220, size.height-30);
    path.quadraticBezierTo(250,size.height,320, size.height-30);
    path.quadraticBezierTo(360,size.height-50,size.width, size.height);
    path.lineTo(size.width, 0);

  path.close();
    // TODO: implement getClip
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
