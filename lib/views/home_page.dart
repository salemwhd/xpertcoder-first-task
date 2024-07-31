import 'package:first_task/views/widget/adv_box.dart';
import 'package:first_task/views/widget/custom_btm_navbar.dart';
import 'package:first_task/views/widget/header_image.dart';
import 'package:first_task/views/widget/red_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      bottomNavigationBar: const CustomBtmNavbar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderImage(),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Advertiesment',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AdvBox(imagePath: 'assets/images/event_card.png'),
                  AdvBox(imagePath: 'assets/images/event_card.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                children: [
                  RedBox(title: 'Membership'),
                  RedBox(title: 'Birthday'),
                  RedBox(title: 'photo session'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Categories',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/categories.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
