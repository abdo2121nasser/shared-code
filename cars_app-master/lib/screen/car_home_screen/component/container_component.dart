import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_hundred_nine/screen/car_detail_screen/car_datail_screen.dart';
import 'package:one_hundred_nine/screen/car_home_screen/data_model/data_model.dart';

class ContainerComponent extends StatelessWidget {
 final Data data;
  const ContainerComponent({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Color(0xff008955)
            ),
            color: Color(0xffE2F5ED)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.name!,style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                        Text("${data.isManual==true?"Manual":"Automatic"}  | ${data.numOfSeat} Seats | ${data.type}",style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),),
                        Row(
                          children: [
                            Icon(Icons.location_on_rounded,
                              size: 15,),
                            Text("${data.distance}m (${data.time}mins away)")
                          ],
                        )

                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(data.image!,
                    ),
                  )
                ],
              ),
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
