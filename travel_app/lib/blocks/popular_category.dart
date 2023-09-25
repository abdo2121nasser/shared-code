import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/blocks/popular_category_icon.dart';

import '../cubits/popular_category_cubit.dart';


class PopularCategory extends StatelessWidget {
  const PopularCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularCategoryCubit, PopularCategoryState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit2=PopularCategoryCubit.get(context);

        return Padding(
          padding:  EdgeInsets.only(left: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Popular Categories',
                style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => PopularCategoryicon(index: index,flage: true,),
                    separatorBuilder: (context, index) => SizedBox(width: 30.sp,) ,
                    itemCount: cubit2.popularrDataModel.data!.length!),
              )
            ],
          ),
        );
      },
    );
  }
}
