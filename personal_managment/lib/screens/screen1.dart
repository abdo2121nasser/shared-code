import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_managment/blocks/deital_row.dart';
import 'package:personal_managment/blocks/item_block.dart';
import 'package:personal_managment/blocks/spent_block.dart';

import '../data_model/map.dart';
import '../model/api.dart';


class Screen1 extends StatefulWidget {
  Screen1({super.key});
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Api? dataModel;
  List<bool> show=[];
  @override
  void initState() {


    // TODO: implement initState
    super.initState();
    dataModel=Api.fromJson(data);
    for(int i=0;i<dataModel!.data!.categories!.length!;i++)
    {
      show.add(false);
    }
    print(show);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Hi Jim',
          style: TextStyle(color: Colors.black87,fontSize: 25.sp),),
        actions: [
          Icon(Icons.settings,color: Colors.black87,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.sp),
            child: Icon(Icons.more_vert_sharp,color: Colors.black87,),
          )
        ],
      ),
   body: Column(
     children: [
       SpentBlock(data: dataModel!.data!),
       Expanded(
         child: ListView.separated(padding: EdgeInsets.symmetric(horizontal: 20.sp),
             separatorBuilder:(BuildContext context, int index){return SizedBox(height: 10.h,);},
             itemCount: dataModel!.data!.categories!.length,
             itemBuilder: (BuildContext context, int outIndex) {
               return Column(
                 children: [
                   InkWell(
                       onTap: ()
                       {
                         show[outIndex]=!show[outIndex];
                         setState(() {

                         });
                       },
                       child: ItemBlock(data: dataModel!.data!.categories![outIndex],flage: show[outIndex],)),
                   if(show[outIndex])
                   ListView.separated(
                     shrinkWrap: true,
                       itemBuilder: (BuildContext context ,int index){return DetailRow(data: dataModel!.data!.categories![outIndex].listDetails![index],);},
                       separatorBuilder:(BuildContext context ,int index){return SizedBox(height: 10.sp);},
                       itemCount: dataModel!.data!.categories![outIndex].listDetails!.length)
                 ],
               );
             }),
       )

     ],
   ),

    );
  }
}
