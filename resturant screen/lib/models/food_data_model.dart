
class FoodModel
{
  String text1,text2,image;

  FoodModel({required this.text1,required this.text2,required this.image});
}

List<FoodModel>foodData=
[ FoodModel(text1: 'Ramen',
    text2: 'Ambrosia Hotel &\nRestaurant',
    image:'https://www.halfbakedharvest.com/wp-content/uploads/2021/01/30-Minute-Spicy-Miso-Chicken-Katsu-Ramen-7-700x1050.jpg'),
  FoodModel(text1: 'Chicken Biryani',
      text2: 'Ambrosia Hotel &\nRestaurant',
      image:'https://th.bing.com/th/id/OIP.FPuP3QNkURKQqGMi9VkeZQHaE8?pid=ImgDet&rs=1'),
  FoodModel(text1: 'sauce Tonlkatsu',
      text2: 'Handle Restaurant &\nChittanong',
      image:'https://th.bing.com/th/id/OIP.4QeAS-AInO1JLR2YOp3h2QHaHa?pid=ImgDet&rs=1'),
  FoodModel(text1: 'Chicken Katsu',
      text2: 'Ambrosia Hotel &\nRestaurant',
      image:'https://cdn.shortpixel.ai/client/q_lossy,ret_img,w_1200,h_800/https://norecipes.com/wp-content/uploads/2020/06/chicken-katsu-004-1200x800.jpg'),

];