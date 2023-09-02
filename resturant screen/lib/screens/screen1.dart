import 'package:flutter/material.dart';
import 'package:resturant_screen/blocks/food_block.dart';
import 'package:resturant_screen/blocks/restaurant_block.dart';
import 'package:resturant_screen/blocks/search_bar_block.dart';
import 'package:resturant_screen/models/food_data_model.dart';
import 'package:resturant_screen/models/restaurant_data_model.dart';

import '../blocks/text_bar_block.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
         Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://jooinn.com/images/man-31.jpg'),
            ),
          )
        ],
        leading: const Icon(Icons.menu,color: Colors.black87,),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_sharp,color: Colors.green,size: 20,),
            Text('Agrabad 435, Chittagong',style: TextStyle(color: Colors.black87,fontSize: 15),)
          ],
        ),
      ),
      body: Column(
        children: [
         const SearchBare(),
          Padding(
            padding: const EdgeInsets.only(bottom:20 ),
            child: TextBar(
              text1: 'Today new Arivable',
              text2: 'Best of the today food list update',
            ),
          ),
          SizedBox(
            height: 180,
            child:  ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: foodData.length,
                itemBuilder: (BuildContext context, int index) {
                  return FoodBlock(data: foodData[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:10,top: 5 ),
            child: TextBar(
              text1: 'Explore Restaurant',
              text2: 'Check your city Near by Reastaurant',
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemCount: restaurantData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ReataurantBlock(data: restaurantData[index]);
                }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 10); },),
          ),



        ],
      )
    );
  }
}
