import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerContentComponent extends StatelessWidget {
  final String title;
  final String text;
  const ContainerContentComponent({Key? key,
  required this.title,
  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),),
          Text(text,style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500
          ),),
        ],
      ),
    );
  }
}
