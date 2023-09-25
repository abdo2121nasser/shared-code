import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/blocks/city_place_block.dart';
import 'package:travel_app/cubits/travel_cubit.dart';
import 'package:travel_app/cubits/travel_cubit.dart';


class ExploreCitiesBlock extends StatelessWidget {
  const ExploreCitiesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelCubit, TravelState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=TravelCubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explore Cities',
              style: TextStyle(fontSize: 23.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
            Padding(
              padding:  EdgeInsets.only(top: 10.h),
              child: SizedBox(
                height: 30.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('All',style: TextStyle(
                        color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.bold,fontSize: 18
                      ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left: 10,right: 10),
                      child: Text('Popular',style: TextStyle(
                        color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 18
                      ),),
                    ),
                     Padding(
                      padding:  const EdgeInsets.only(left: 10,right: 10),
                      child: Text('Recommended',style: TextStyle(
                        color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.bold,fontSize: 18
                      ),),
                    ),
                    Padding(
                      padding: const  EdgeInsets.only(left: 10,right: 10),
                      child: Text('Most Viewed',style: TextStyle(
                        color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.bold,fontSize: 18
                      ),),
                    ),
                    Padding(
                      padding:  const EdgeInsets.only(left: 10,right: 10),
                      child: Text('Recent',style: TextStyle(
                        color: Colors.black.withOpacity(0.3),fontWeight: FontWeight.bold,fontSize: 18
                      ),),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 180.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                      onTap: ()
                      {
                      },
                      child: CityPlaceBlock(index: index,)
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 20.sp,),
                  itemCount: cubit.dataModel.data![cubit.presentPlaceIndex].placeData!.length),
            ),

            
          ],
        );
      },
    );
  }
}
