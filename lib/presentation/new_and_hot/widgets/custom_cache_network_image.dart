import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String image;
  const CustomNetworkImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(child: Text('Loading...')),
      errorWidget: (context, url, error) =>
          Center(child: Text(error.toString())),
    );
  }
}
