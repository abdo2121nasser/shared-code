import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/data_models/button_data_model.dart';

class MyButton extends StatelessWidget {
  ButtonDataModel data;
  bool falgeColor;
  VoidCallback function;
  String text;
  MyButton({required this.text,required this.data,required this.function,required this.falgeColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:function,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: falgeColor?Colors.deepPurple:Colors.transparent,width: 3.w),
        elevation: 0,
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(data.borderRadius)),
        fixedSize: Size(data.width.w, data.height.h),
        backgroundColor:data.background
      ),
        child: Text(text,
          style: TextStyle(
            fontSize: data.textSize.sp,
            color: data.textColor
          ),
        ),
    );
  }
}
