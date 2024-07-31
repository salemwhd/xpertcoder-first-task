import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_home.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 54, left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(240, 240, 76, 41),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'Delightful open air',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.white.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.all(4),
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
