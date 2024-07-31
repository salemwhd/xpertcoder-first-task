import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
    required this.imagePath,
    required this.roomName,
  });
  final String imagePath;
  final String roomName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: Colors.white,
          shadowColor: Colors.black,
          elevation: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    roomName,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
