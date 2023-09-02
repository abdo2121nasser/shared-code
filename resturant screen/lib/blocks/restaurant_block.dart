import 'package:flutter/material.dart';
import 'package:resturant_screen/models/restaurant_data_model.dart';


class ReataurantBlock extends StatelessWidget {
 ReastaurantModel data;

 ReataurantBlock({required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 100,height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:DecorationImage(
                  image: NetworkImage(data.image),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(data.text1,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const   Padding(
                    padding:  EdgeInsets.only(left: 15),
                    child: Icon(Icons.location_on_sharp,color: Colors.green,),
                  ),
                  Text(data.text2,
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
                  Container(
                    margin: const EdgeInsets.only(left: 10,top: 10),
                    alignment: Alignment.center,
                    width: 100,height: 35,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Text('Book',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
