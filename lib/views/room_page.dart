import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Training room'),
        ),
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/room_background.jpg', // Replace with your image URL or asset
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.red),
                    padding: EdgeInsets.only(left: 8),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                        Text(
                          'Roxy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Training Room',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 100,
                    height: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 3, offset: Offset(0, 2)),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.event_seat_sharp,
                          color: Colors.red,
                        ),
                        SizedBox(width: 4),
                        Text('30 Seats'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Amenities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.print),
                          SizedBox(width: 8),
                          Text('Printer, Scanner and photocopier'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.wifi),
                          SizedBox(width: 8),
                          Text('Wi-fi'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.local_cafe),
                          SizedBox(width: 8),
                          Text('Free coffee'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.videocam),
                          SizedBox(width: 8),
                          Text('Video Conf'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.tv),
                          SizedBox(width: 8),
                          Text('LED screen'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[300], // Placeholder for map
                    child: const Center(child: Text('Map Placeholder')),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '100.0 EGP/Day',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all<Color>(Colors.red)),
                        child: const Text(
                          'Select Date',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
