import 'package:flutter/material.dart';

import '../models/food_data_model.dart';


class FoodBlock extends StatelessWidget {
  FoodModel data;

  FoodBlock({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 150,height: 160,
      decoration:const BoxDecoration(
          color: Colors.white,
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,height: 90,
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              image:DecorationImage(
                  image: NetworkImage(data.image),
              fit: BoxFit.fill,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 3),
            child: Text(data.text1,
              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Row(
            children: [
             const Icon(Icons.location_on_sharp,color: Colors.green,size: 20,),
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 2),
                child: Text(data.text2,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey.withOpacity(0.7)),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
/*
Image.asset(data.image,
                  cacheWidth: 160,
                  cacheHeight: 83,
                )


 */