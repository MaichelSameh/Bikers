import 'package:flutter/material.dart';

class PhotosWithColorLayers extends StatelessWidget {
  final List<Color> colors;
  final String imagePath;
  PhotosWithColorLayers({
    required this.colors,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        ...createLayers(colors),
      ],
    );
  }

  List<Container> createLayers(List<Color> colors) {
    List<Container> layers = [];
    for (int i = 0; i < colors.length; i++) {
      layers.add(
        Container(
          color: colors[i],
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return layers;
  }
}
