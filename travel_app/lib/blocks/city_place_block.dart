import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/cubits/travel_cubit.dart';
import 'package:travel_app/cubits/travel_cubit.dart';


class CityPlaceBlock extends StatelessWidget {
int index;

CityPlaceBlock({required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelCubit, TravelState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=TravelCubit.get(context);
        return Container(
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(10.r)

          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
               children:[  Container(
                  width: 130,height: 130,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                          image: Image.network(
                          cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].image!,
                            fit: BoxFit.fill,).image
                      )
                  ),
                ),
               Positioned(
                 right: 15,
                 top: 10,
                 child: Container(
                   width: 35,height: 35,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color(0xffc05e2b)
                   ),
                   child: Icon(Icons.favorite_border,color: Colors.white.withOpacity(0.6),),
                 ),
               )
               ]
              ),
              SizedBox(
                width: 150.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].country!,
                        style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(Icons.star_border_sharp,color: Colors.grey,size: 18.sp,),
                              Text('4.9',
                                style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [

                              Icon(Icons.location_on_sharp,color: Colors.grey,size: 15.sp,),
                              Text(cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].country!,
                                style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Text('\$${cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].price}',
                                style: TextStyle(fontSize: 14.sp,color: Color(0xffc05e2b)),),
                              Text('/person',
                                style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
