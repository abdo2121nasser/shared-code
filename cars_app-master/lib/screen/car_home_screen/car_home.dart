import 'package:flutter/material.dart';
import 'package:one_hundred_nine/screen/car_home_screen/data_model/data_model.dart';
import 'component/container_component.dart';

class CarHomeScreen extends StatefulWidget {
  const CarHomeScreen({Key? key}) : super(key: key);

  @override
  State<CarHomeScreen> createState() => _CarHomeScreenState();
}

class _CarHomeScreenState extends State<CarHomeScreen> {

  CarsModel? carsModel;

  @override
  void initState() {
    carsModel=CarsModel.fromJson(myData);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Car Home Screen",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black
        ),),
      ),
      body: Padding(
        padding:  EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Avaiable Cars for ride",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            SizedBox(height: 10,),
            Text("${carsModel!.data!.length} cars found",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index)=>ContainerComponent(data: carsModel!.data![index])
                , separatorBuilder: (context,index)=>SizedBox(height: 8,),
                itemCount: carsModel!.data!.length,),
            ),
          ],
        ),
      ),
    );
  }
}
