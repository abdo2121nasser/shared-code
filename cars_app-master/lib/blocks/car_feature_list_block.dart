import 'package:flutter/material.dart';

import '../screen/car_home_screen/data_model/data_model.dart';


class ListBlock extends StatelessWidget {
   ListBlock({required this.text,required this.value});
String text,value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      margin:const EdgeInsets.only(right: 10),
      height:40,
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green,width: 1.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          Text(value,
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),

        ],
      ),
    );
  }
}
