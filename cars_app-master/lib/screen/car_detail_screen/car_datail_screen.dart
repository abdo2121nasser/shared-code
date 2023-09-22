import 'package:flutter/material.dart';
import 'package:one_hundred_nine/blocks/car_feature_list_block.dart';
import 'package:one_hundred_nine/blocks/specification_block.dart';
import 'package:one_hundred_nine/data_models/specification_daya_model.dart';
import 'package:one_hundred_nine/models/specification_model.dart';

import '../../core/util/app_images/app_images.dart';
import '../car_home_screen/data_model/data_model.dart';


class CarDetail extends StatelessWidget {
  Data data;

  CarDetail({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 80,
              backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            InkWell(

              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
     const SizedBox(width: 10,),
           const Text('Back',
              style: TextStyle(color: Colors.black,fontSize: 20),),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data!.name!,
              style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),//todo variable text name
            Row(
              children: [
                Icon(Icons.star,size: 20,color: Colors.yellow,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('4.9 (5.31 reviews)',
                    style: TextStyle(fontSize: 15,color: Colors.grey),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
                Image.asset(data!.image!,width: 250,height: 90,),//todo change car image
                Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ],
            ),
         const   Text('Specifications',
              style: TextStyle(fontSize: 20,color: Colors.black),),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SpecificationBlock(data: specificationData[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 5,),
                  itemCount: 4),
            ),
            Text('Car features',
              style: TextStyle(fontSize: 20,color: Colors.black),),//todo variable text name

          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListBlock(value: 'Gt5000',text: 'Model' ,),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListBlock(value: '760hp',text:'Capacity' ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListBlock(value: 'red',text: 'color' ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListBlock(value: data!.type!,text: 'Fuel type' ,),

                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListBlock(value: data!.isManual!?'manual':'automatic',text: 'Great type' ,),
                ),
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(onPressed: (){}, child: Text("Book Later",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff008955)
                        ),),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: Color(0xff008955)
                            ))
                        ),)),
                  SizedBox(width: 8,),
                  Expanded(
                      child: TextButton(onPressed: ()
                      {
                        //todo action
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => CarDetail(data: data,)));
                      }, child: Text("Ride Now",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xff008955))
                        ),)),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
