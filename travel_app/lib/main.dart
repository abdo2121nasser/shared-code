import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screens/detail_screen.dart';
import 'package:travel_app/screens/user_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/popular_category_cubit.dart';
import 'cubits/travel_cubit.dart';

void main() {
  runApp(const TravelApp());
}


class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>TravelCubit()),
        BlocProvider(create: (context)=>PopularCategoryCubit())

      ],
      child: SafeArea(
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_ , child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
            );
          },

        ),
      ),
    );
  }
}
