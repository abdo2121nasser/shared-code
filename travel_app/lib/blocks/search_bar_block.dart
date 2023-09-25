import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      width: double.infinity,height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.sp)
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.grey.withOpacity(0.7)),
                Padding(
                  padding:  EdgeInsets.only(left: 20.sp),
                  child: Text('Discover a city',style: TextStyle(
                      color: Colors.grey.withOpacity(0.7)
                  ),),
                ),
              ],
            ),
          ),
          Icon(Icons.menu,color: Colors.grey.withOpacity(0.7)),
        ],
      ),
    );
  }
}
