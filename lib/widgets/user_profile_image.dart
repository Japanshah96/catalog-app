// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;
  const UserProfileImage({
    Key? key,
    required this.imageUrl,
    this.size = 48.0,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child: Image.network(
        imageUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
