import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String image;
  final BoxFit fit;
  const CustomNetworkImage({
    super.key,
    required this.image,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: fit,
      placeholder: (context, url) => const Center(child: Text('Loading...')),
      errorWidget: (context, url, error) =>
          Center(child: Text(error.toString())),
    );
  }
}
