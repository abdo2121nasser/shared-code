import 'package:flutter/material.dart';


class TextBar extends StatelessWidget {
String text1,text2;


TextBar({required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,
              style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(text2,
                  style: TextStyle(fontSize: 15,
                      color: Colors.grey.shade800.withOpacity(0.7),
                      fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Row(
            children: [
              Text('See All ',
                style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.bold,
                color: Colors.grey.shade600.withOpacity(0.7)),),
              Icon(Icons.arrow_forward_ios,
                color: Colors.grey.shade600.withOpacity(0.7),
              size: 15,)
            ],
          )
        ],
      ),
    );
  }
}
