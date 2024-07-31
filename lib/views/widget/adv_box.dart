import 'package:flutter/material.dart';

class AdvBox extends StatelessWidget {
  const AdvBox({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 120,
      width: 250,
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.fill,
      ),
    );
  }
}
