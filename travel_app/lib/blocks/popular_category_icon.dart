import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/cubits/popular_category_cubit.dart';


class PopularCategoryicon extends StatelessWidget {
  final int index;
  final bool flage;

  PopularCategoryicon({required this.index,required this.flage});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularCategoryCubit, PopularCategoryState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit2=PopularCategoryCubit.get(context);

        return Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0.sp),
              width: 40, height: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: Image
                          .network(
                         flage? cubit2.popularrDataModel.data![index].image!:cubit2.popularrDataModel.feature![index].image!)
                          .image
                  )
              ),
            ),
            Text(flage? cubit2.popularrDataModel.data![index].name!:cubit2.popularrDataModel.feature![index].name!,
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black87
            ),)
          ],
        );
      },
    );
  }
}
