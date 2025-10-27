import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: photos(),
    ),
  );
}

Widget photos() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(),
    );

List<Container> _buildGridTileList() {
  List<String> imagePaths = [
    'assets/images/image0.jpg',
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
    'assets/images/image6.jpg',
    'assets/images/image7.jpg',
  ];

  return imagePaths.map((path) {
    return Container(
      child: Image.asset(
        path,
        fit: BoxFit.cover, // Adjust image fit
      ),
    );
  }).toList();
}




// List<Container> _buildGridTileList(int count) => List.generate(
//     count, (i) => Container(child: Image.asset('assets/icons/pic$i.jpg')));
