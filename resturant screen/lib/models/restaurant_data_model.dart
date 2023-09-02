import 'package:flutter/material.dart';

class ReastaurantModel
{
  String text1,text2,image;

  ReastaurantModel({required this.text1,required this.text2,required this.image});
}

List<ReastaurantModel>restaurantData=
[ ReastaurantModel(text1: 'Ambrois Hotel',
    text2: 'Ambrosia Hotel &\nRestaurant',
image:'https://th.bing.com/th/id/OIP.OvFwDgMrh_5Qz6AYQ4p6MwHaE5?pid=ImgDet&rs=1'
),
ReastaurantModel(text1: 'Tava Restaurant',
      text2: 'Ambrosia Hotel &\nRestaurant',
      image:'https://th.bing.com/th/id/OIP.FPuP3QNkURKQqGMi9VkeZQHaE8?pid=ImgDet&rs=1'),
  ReastaurantModel(text1: 'Haatkola',
      text2: 'Handle Restaurant &\nChittanong',
      image:'https://th.bing.com/th/id/R.7f93d0821fe0ceae1753f25328208841?rik=OM0jqE5Xqc1kFQ&pid=ImgRaw&r=0'),

];