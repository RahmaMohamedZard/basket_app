// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: 
        Container(
          height: 30,
          decoration: BoxDecoration(
            color:  Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children:const [
              Icon( Icons.search,size: 15, ),
              SizedBox(width: 5,),
             Text('Search', style: TextStyle(fontSize: 15),),
            ],
          ),
        ),
         
        ),
        SizedBox(width: 10,),
        Icon(Icons.menu,size: 30,)
      ],
    );
  }
}