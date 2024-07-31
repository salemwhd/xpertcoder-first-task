import 'package:first_task/views/booking_page.dart';
import 'package:first_task/views/home_page.dart';
import 'package:first_task/views/room_page.dart';
import 'package:first_task/views/rooms_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BookingPage(imagePath: 'assets/images/room_image1.png'),
    );
  }
}
