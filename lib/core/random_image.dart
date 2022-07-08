import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  RandomImage({Key? key, this.height = 100})
      : super(key: key); //verilmediğinde otomatik 100 alsın

  final imageUrl = 'https://picsum.photos/seed/picsum/200/300';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.fill,
    );
  }
}
