import 'package:flutter/material.dart';

class RedBox extends StatelessWidget {
  const RedBox({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 12, left: 8),
      height: 60,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
