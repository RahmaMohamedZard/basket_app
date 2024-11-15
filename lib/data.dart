class Data {
  final String img;
  final String title;
  final String des;
  final String price;


Data({

required this.img,
required this.title,
required this.des,
required this.price,
});
}

List<Data> getData =[
  Data(
    img: 'assets/images/img2.jpeg', 
    title: 'product 1',
    des: 'description ...', 
    price: '340\$'
    ),

  Data(
    img: 'assets/images/img3.jpeg',
    title: 'product 2',
    des: 'description ...',
    price: '340\$'
    ),

  Data(
    img: 'assets/images/img1.jpeg',
    title: 'product 3',
    des: 'description ...',
    price: '340\$'
    ),

  Data(
    img: 'assets/images/img4.jpeg',
    title: 'product 4',
    des: 'description ...',
    price: '340\$'
    ),

 
];