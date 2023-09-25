import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/blocks/category_block.dart';
import 'package:travel_app/blocks/explore_cities.dart';
import 'package:travel_app/blocks/popular_category.dart';
import 'package:travel_app/blocks/search_bar_block.dart';
import '../cubits/travel_cubit.dart';



class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelCubit,TravelState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit=TravelCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
appBar: PreferredSize(
  preferredSize: Size.fromHeight(50.h),
  child: AppBar(
    leadingWidth: 60.w,
backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: 2.sp,top: 10.sp),
            child: Row(

              children: [
                Text('Welcome back',
                  style: TextStyle(color: Colors.grey,fontSize: 15.sp),),
                Icon(Icons.waving_hand_rounded,color: const Color(0xffEDCBAB),size: 20.sp,)
              ],
            ),
          ),
          Text('Ronald Richards',
            style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.bold),)
        ],
      ),
      leading: Container(
        margin: EdgeInsets.only(top: 7.sp,left: 10.sp),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white60,width: 1.w),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: Image.asset('lib/assets/smileman2.jpg',).image,
            )
        ),
      ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(7.sp),
        padding: EdgeInsets.all(7.sp),
        decoration: const BoxDecoration(
          color:  Color(0xffEDCBAB),
          shape: BoxShape.circle
        ),
        child: Icon(Icons.notifications_none_outlined,size: 30.sp,)
      )
    ],
  ),
),
body: Column(
  children: [
    SearchBarBlock(),
   SizedBox(
     height: 65.h,
     child: ListView.separated(
       padding: EdgeInsets.symmetric(horizontal: 10.sp),
         scrollDirection: Axis.horizontal,

         itemBuilder: (context, index) => InkWell(
           onTap: ()
             {
               cubit.changeColorIndex(index);
             },
             child: CategoryBlock(data: cubit.dataModel.data![index],color:  cubit.dataModel.data![index]!.categoryColorFlage!? const Color(0xffc05e2b):Colors.white)),
         separatorBuilder: (context, index) => SizedBox(width: 10.sp,),
         itemCount: cubit.dataModel.data!.length),
   ),
     Padding(
       padding:  EdgeInsets.only(left: 10.sp),
       child: ExploreCitiesBlock(),
     ),
PopularCategory()
  ],
),
      bottomNavigationBar:  BottomNavigationBar(

        onTap: (index) => cubit.setBottonBarIndex(index),
        currentIndex: cubit.getBottombarIndex(),
        items:  [
          BottomNavigationBarItem(icon:/* cubit.bottonNavigationBarIndex,*/cubit.getRoundIcon(icon: Icons.home,index: 0)
  ,label: '',backgroundColor:const Color(0xffecddcc),

          ),
          BottomNavigationBarItem(icon: cubit.getRoundIcon(icon: Icons.circle_outlined,index: 1),
              label: '',backgroundColor:const Color(0xffecddcc),
          ),
          BottomNavigationBarItem(icon: cubit.getRoundIcon(icon: Icons.apps,index: 2),
              label: '',backgroundColor:const Color(0xffecddcc),
          ),
    BottomNavigationBarItem(icon: cubit.getRoundIcon(icon: Icons.favorite_border,index: 3),
        label: '',backgroundColor:const Color(0xffecddcc),),
          BottomNavigationBarItem(icon: cubit.getRoundIcon(icon: Icons.person_2_outlined,index: 4),label: ''
    ,backgroundColor:const Color(0xffecddcc),)

        ],
      ),
    );
  },
);
  }
}
