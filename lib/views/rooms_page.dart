import 'package:first_task/views/widget/room_card.dart';
import 'package:flutter/material.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(widthFactor: 4, child: Text('Rooms')),
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          RoomCard(
            imagePath: 'assets/images/room_image1.png',
            roomName: 'Training room',
          ),
          RoomCard(
            imagePath: 'assets/images/room_image2.png',
            roomName: 'Funny room',
          ),
          RoomCard(
            imagePath: 'assets/images/room_image3.png',
            roomName: 'Meeting room',
          )
        ],
      ),
    );
  }
}
