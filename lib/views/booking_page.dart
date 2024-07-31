import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  final String imagePath;
 final double bookingCharges = 100;
 final double total = 100;

  const BookingPage({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(widthFactor: 2, child: Text('Booking Review')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBookingCard(),
              SizedBox(height: 16),
              _buildBookingDetails(),
              SizedBox(height: 16),
              _buildPaymentMethod(),
              SizedBox(height: 16),
              _buildDiscountsAvailable(),
              SizedBox(height: 16),
              _buildBookButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookingCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 100,
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Training room'),
              Text('inside'),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 114, 114),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 24,
                  color: const Color.fromARGB(255, 214, 214, 214),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildBookingDetails() {
    return SizedBox(
      height: 120,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Booking Details',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16),
                      SizedBox(width: 8),
                      Text('Sat, 01 Apr 2023 08:00 PM'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16),
                      SizedBox(width: 8),
                      Text('Sun, 02 Apr 2023 08:00 PM'),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(88, 248, 211, 202)),
                child: const Text(
                  'Change',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod() {
    return const Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Method',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('You will not be debited until your booking is confirmed'),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 24,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text('Add card'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDiscountsAvailable() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discounts Available',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(88, 248, 211, 202)),
                    child: const Text(
                      'Add promo',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.local_offer_rounded), // Leading icon
                    suffixIcon: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(88, 248, 211, 202),
                      ),
                      child: Text(
                        'Apply',
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {},
                    ),
                    hintText: '30% off  10 booking (up to EGP 150)',
                    hintStyle: TextStyle(
                      fontSize: 13,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const Divider(),
              const Text(
                'Booking Charges',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Divider(),
              Row(
                children: [
                  const Text(
                    'x1 Day EGP 100.0 x 1 Seat',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text('EGP $bookingCharges'),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  const Text(
                    'Total Due',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'EGP $total',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookButton() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Book',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Color.fromARGB(255, 32, 71, 62)),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Cancellation Policy',
              //style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
