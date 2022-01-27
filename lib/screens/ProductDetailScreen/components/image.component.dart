import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    Key? key,
    required this.productData,
  }) : super(key: key);

  final productData;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: productData.image,
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: Image.network(
          productData.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
