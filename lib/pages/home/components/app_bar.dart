import 'package:flutter/material.dart';

AppBar appBarComponent() {
  return AppBar(
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Home'),
        IconButton(
          icon: const Icon(Icons.arrow_drop_down_circle),
          onPressed: () {},
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.help),
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: const Color(0xFF4D37A5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    ],
  );
}
