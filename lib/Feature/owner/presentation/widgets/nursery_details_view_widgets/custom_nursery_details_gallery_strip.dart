import 'package:flutter/material.dart';

class CustomNurseryDetailsGalleryStrip extends StatelessWidget {
  const CustomNurseryDetailsGalleryStrip({super.key, required this.imageUrls});

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrls[index],
              width: MediaQuery.sizeOf(context).width * 0.27,
              fit: BoxFit.cover,
            ),
          );
        },
        separatorBuilder: (context, index) =>
            SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
        itemCount: imageUrls.length,
      ),
    );
  }
}
