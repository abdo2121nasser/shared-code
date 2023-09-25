import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/models/travel_model.dart';

import '../data_models/travel_data_model.dart';

part 'travel_state.dart';

class TravelCubit extends Cubit<TravelState> {
  TravelCubit() : super(TravelInitial());
  static TravelCubit get(context)=>BlocProvider.of(context);
 TravelModel dataModel=TravelModel.fromJson(travelData);
 int tempIndexColor=0;
 int presentPlaceIndex=0;
 int bottonNavigationBarIndex=0;

 void changeColorIndex(int index)
 {
   dataModel.data![tempIndexColor].categoryColorFlage=false;
   tempIndexColor=index;
   dataModel.data![index].categoryColorFlage=true;
   presentPlaceIndex=index;
emit(ChangeColorIndexState());
 }
 void setBottonBarIndex(int index)
 {
   bottonNavigationBarIndex=index;
   emit(setBottonBarIndexState());
 }
 int getBottombarIndex()
 {
   emit(getBottombarIndexState());
   return bottonNavigationBarIndex;
 }
Widget getRoundIcon({required IconData icon,required int index})
 {
   return  bottonNavigationBarIndex==index? Container(
     padding: EdgeInsets.all(5.sp),
     alignment: Alignment.center,
     decoration: BoxDecoration(
       shape: BoxShape.circle,
       color: Color(0xffc05e2b)
     ),
     child: Icon(icon,size: 20.sp,),
   ):Icon(icon,size: 25.sp,);

 }

}
