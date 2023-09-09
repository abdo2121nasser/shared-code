import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/blocks/level_button_block.dart';
import '../data_base/SqlDataBase.dart';
late int itemNumber;
class Levels extends StatefulWidget {

  static String id = 'levels';

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    Future getData() async
    {
    var  read= await SqlDataBase().readData('SELECT Count(*) FROM levels');
    itemNumber=read[0]['Count(*)'];
       read= await SqlDataBase().readData('SELECT * FROM levels');
      return read;
    }

    return Scaffold(
      backgroundColor: const Color(0xff1F1147),
      appBar: AppBar(
      /*  actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.sp),
            child: IconButton(onPressed: () async {
              String lock;
            var count= await SqlDataBase().readData('SELECT Count(*) FROM levels');
              if(count[0]['Count(*)']==0)  lock='true'; else lock='false';

              var insert= await SqlDataBase().insertData("INSERT INTO 'levels' ('id','lock','grade') VALUES ('${count[0]['Count(*)']+1}','$lock','0')");
              var read= await SqlDataBase().readData('SELECT * FROM levels');
               //var delete = await SqlDataBase().deleteData("DELETE FROM 'levels'   ");
               print(read);
              setState(() {

              });

            }, icon: Icon(Icons.add,size: 30.sp,)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.sp),
            child: IconButton(onPressed: () async {
               var count= await SqlDataBase().readData('SELECT Count(*) FROM levels');
               var read= await SqlDataBase().readData('SELECT * FROM levels');
              var delete = await SqlDataBase().deleteData("DELETE FROM 'levels' WHERE id= ${count[0]['Count(*)']}  ");
              print(read);
    setState(() {

    });

            }, icon: Icon(Icons.remove,size: 30.sp,)),
          ),
        ],*/

        backgroundColor: const Color(0xff1F1147),
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_circle_left_sharp
              , color: Colors.deepPurple, size: 35.sp,)
        ),
        centerTitle: true,
        title: Text('Levels',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold
              , color: Colors.greenAccent),),
      ),
        body: FutureBuilder(future: getData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.hasData)
            {
              return GridView.builder(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // mainAxisExtent: 140,
                    crossAxisSpacing:10,
                    //  childAspectRatio: (1/.1),
                    mainAxisSpacing: 0),
                itemBuilder: (_, index) => LevelButton(levelNumber: snapshot.data[index]['id'] ,lock: snapshot.data[index]['lock'],grade: snapshot.data[index]['grade'], ),
                itemCount:itemNumber,
              );
            }
            else
            {
              return const CircularProgressIndicator();
            }
          },

        )
    );
  }
}