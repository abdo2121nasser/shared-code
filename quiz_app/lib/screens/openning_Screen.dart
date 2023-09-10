import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/blocks/button.dart';
import 'package:quiz_app/data_models/button_data_model.dart';
import 'package:quiz_app/models/wave_clipper_model.dart';
import 'package:quiz_app/screens/levels_screen.dart';

import '../data_base/SqlDataBase.dart';



class OpenningScreen extends StatelessWidget {
  const OpenningScreen({super.key});
  static String id='opeening screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:const Color(0xff1F1147),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipPath(
              clipper: MyWave(),
              child: Container(
                height: 350.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/purpel.jpg')
                  )
                ),
              ),
            ),
              Positioned(
                bottom: 100.h,
                left: 105.w,
                child: Column(
                  children: [
                    Image.asset('lib/assets/lamp.png'),
                    Text('Quizzles',
                    style: TextStyle(color: Colors.greenAccent.shade200,
                        fontSize: 40.sp,fontWeight: FontWeight.bold),)
                  ],
                ),
              )
            ],
          ),
         SizedBox(
           height: 100.h,
           child: Column(
             children: [
               Text('Lets Play!',
                 style: TextStyle(
                     fontSize: 40.sp,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                 ),),
               Text('Play now and Level up',
                 style: TextStyle(
                     fontSize: 20.sp,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                 ),),
             ],
           ),
         ),
          MyButton(text: 'Lets Play!',falgeColor: false,data: buttonData[0],function: () async {
            var count= await SqlDataBase().readData('SELECT Count(*) FROM levels');
            if(count[0]['Count(*)']==0)
              {
                var insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('1','true','0')");
                    insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('2','false','0')");
                    insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('3','false','0')");
                    insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('4','false','0')");
                    insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('5','false','0')");
                    var read= await SqlDataBase().readData('SELECT * FROM levels');
                print(read);
              }
            Navigator.pushNamed(context, Levels.id);
          },),
          Padding(
            padding:  EdgeInsets.only(bottom: 15.sp),
            child: MyButton(text: 'About',falgeColor: true,data: buttonData[1],function: (){
              AwesomeDialog(titleTextStyle: TextStyle(color: Colors.black87),
                  context: context,
                  dialogType: DialogType.info,
                  title: "this app for testing your self in project management field\n"
                      "the questions prepared by\nAbdalrahman Habib",
                  alignment: Alignment.center,
                  btnOkOnPress: (){}
              ).show();


            },),
          )
        ],
      ),

    );
  }
}
