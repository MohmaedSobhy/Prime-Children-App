import 'package:flutter/material.dart';

class MapSectionWidget extends StatelessWidget {
  const MapSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.network(
        "https://images.unsplash.com/photo-1524661135-423995f22d0b",
        fit: BoxFit.cover,
      ),
    );
  }
}
