import 'package:flutter/material.dart';

import '../models/specification_model.dart';

class SpecificationBlock extends StatelessWidget {
   SpecificationBlock({required this.data});
   specificationModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,height: 80,
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.green,width: 2.5)
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(data.icon),
          Text(data.text1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
          Text(data.text2,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold
            ),),
        ],
      ),//todo change variables
    );
  }
}
