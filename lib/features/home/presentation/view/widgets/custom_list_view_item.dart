import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(fit: BoxFit.fill, imageUrl: imageUrl));
  }
}
