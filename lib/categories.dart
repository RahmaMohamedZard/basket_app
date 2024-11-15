// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key,required this.txt});
final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        txt,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
          ),
      ),
    );
  }
}