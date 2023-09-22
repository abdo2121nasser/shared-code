import 'package:flutter/material.dart';

class HolderComponent extends StatelessWidget {
  final String title;
  final String text;
  const HolderComponent({Key? key,
  required this.text,
  required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
            color: Color(0xff3D36A4),
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),),
        SizedBox(height: 13,),
        Text(text,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),),
      ],
    );
  }
}
