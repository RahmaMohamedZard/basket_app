// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:frist_app/data.dart';
import 'package:frist_app/home_page.dart';

class ProductData extends StatefulWidget {
  const ProductData({Key? key, required this.products }) : super(key: key);
  
  final Data products;
  

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
int activeIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        selectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        onTap: (value) => setState(() {
          activeIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: activeIndex == 0 ? '*' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.store_mall_directory),
            label: activeIndex == 1 ? '*' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: activeIndex == 2 ? '*' : '',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> HomePage()));},
                           icon: Icon(Icons.arrow_back, size: 20, color: Colors.white)),
                          SizedBox(width: 5),
                          Text(widget.products.title, style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.menu, size: 30),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: Image.asset(widget.products.img),
                      ),
                      SizedBox(height: 20),
                      Text(widget.products.title,
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Text(widget.products.des,
                          style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Text(widget.products.price,
                          style: TextStyle(color: Colors.amber, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }}