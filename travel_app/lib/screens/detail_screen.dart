import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/blocks/button.dart';
import 'package:travel_app/cubits/travel_cubit.dart';
import 'package:travel_app/cubits/travel_cubit.dart';

import '../blocks/popular_category_icon.dart';
import '../cubits/popular_category_cubit.dart';


class DetailScreen extends StatelessWidget {

int index;

DetailScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelCubit, TravelState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = TravelCubit.get(context);
        return BlocConsumer<PopularCategoryCubit, PopularCategoryState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var cubit2 = PopularCategoryCubit.get(context);
            return Scaffold(
              backgroundColor: Colors.grey.shade100,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leadingWidth: 100.sp,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.sp),
                        child: const Icon(Icons.arrow_back,
                          color: Colors.black87,),
                      ),
                      Text('Back',
                        style: TextStyle(color: Colors.grey, fontSize: 20.sp),)
                    ],
                  ),
                ),
              ),
              body: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.sp,bottom: 6.sp),
                      width: 270, height: 270,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.r),
                          image: DecorationImage(
                              image: Image
                                  .network(
                                cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].image!,
                                fit: BoxFit.fill,)
                                  .image
                          )
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                      child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20.sp),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => PopularCategoryicon(index: index,flage: false,),
                          separatorBuilder: (context, index) => SizedBox(width: 30.sp,) ,
                          itemCount: cubit2.popularrDataModel.feature!.length!),
                    ),
                    Divider(color: Colors.grey,thickness: 1.sp,),
                    SizedBox(

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].placeName!,
                                style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Icon(Icons.star_border_sharp,color: Colors.grey,size: 18.sp,),
                                    Text('4.9',
                                      style: TextStyle(fontSize: 20.sp,color: Colors.grey),),
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

                                    Icon(Icons.location_on_sharp,color: Colors.grey,size: 18.sp,),
                                    Text(cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].country!,
                                      style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_sharp,color: const Color(0xffc05e2b),size: 22.sp,),

                                    Text('Map Direction',
                                      style: TextStyle(fontSize: 14.sp,color: const Color(0xffc05e2b)),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description',
                          style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                          Text('The Rolle pass is high mountain pass in trentino'
                              'in italy. it connect the fiemme and primiero valleys'
                              'and the community of predazzo, san martino di',
                            style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(text: "\$${cubit.dataModel.data![cubit.presentPlaceIndex].placeData![index].price}/person",
                        textColor: const Color(0xffc05e2b),background: Colors.white,),
                        MyButton(background: const Color(0xffc05e2b), textColor: Colors.white, text: 'Book Now')
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
