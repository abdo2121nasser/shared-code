import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/data_models/popular_category_data_model.dart';

import '../models/popular_category_model.dart';

part 'popular_category_state.dart';

class PopularCategoryCubit extends Cubit<PopularCategoryState> {
  PopularCategoryCubit() : super(PopularCategoryInitial());
  static PopularCategoryCubit get(context)=>BlocProvider.of(context);
  PopularModel popularrDataModel=PopularModel.fromJson(popularCategoryData);
}
