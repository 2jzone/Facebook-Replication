import 'package:flutter/material.dart';

void main() {
  runApp(const PhotosTab());
}

class PhotosTab extends StatelessWidget {
  const PhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: _buildGrid(), // Use _buildList as the body
      ),
    );
  }
  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(12)
    );
  
  List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('assets/images/image$i.jpg'),
    )
  );
}
