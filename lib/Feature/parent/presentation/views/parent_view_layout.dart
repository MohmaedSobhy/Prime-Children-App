import 'package:flutter/material.dart';

class ParentViewLayout extends StatelessWidget {
  const ParentViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text('Owner View')));
  }
}
