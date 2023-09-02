import 'package:flutter/material.dart';

class SearchBare extends StatelessWidget {
  const SearchBare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      width: double.infinity,height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(Icons.search,color: Colors.grey.withOpacity(0.7)),
          Text('  Search',style: TextStyle(
            color: Colors.grey.withOpacity(0.7)
          ),)
        ],
      ),
    );
  }
}
