import 'package:flutter/material.dart';
class Screen1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        backgroundColor: Colors.black,
        body:Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('Adeline Rudolfe',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 200,),
                    Icon(Icons.more_vert,color: Colors.white,)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('offline',style: TextStyle(fontSize: 15,color: Colors.white),),
                  ],
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('Adeline Rudolfe',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 200,),
                    Icon(Icons.more_vert,color: Colors.white,)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('offline',style: TextStyle(fontSize: 15,color: Colors.white),),
                  ],
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('Adeline Rudolfe',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 200,),
                    Icon(Icons.more_vert,color: Colors.white,)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Text('offline',style: TextStyle(fontSize: 15,color: Colors.white),),
                  ],
                )

              ],
            ),
          ],
        )
    );
  }
}






// body:Center(
// child: ClipPath(
// clipper: Tringle(),
// child: Container(
// height: 200,
// width: 200,
// decoration: const BoxDecoration(
// color:  Colors.deepPurpleAccent,
// ),
// ),
// ),
// )
// class Tringle extends CustomClipper<Path>
// {
//   @override
//   Path getClip(Size size) {
//     final path=Path();
//     path.lineTo(size.width/2, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width/2, 0);
//     path.close();
// return path;
//
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;
//
//
// }
