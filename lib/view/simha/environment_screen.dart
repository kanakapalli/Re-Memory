import 'package:flutter/material.dart';

class EnvironmentsScreen extends StatefulWidget {
  const EnvironmentsScreen({super.key});

  @override
  State<EnvironmentsScreen> createState() => _EnvironmentsScreenState();
}

class _EnvironmentsScreenState extends State<EnvironmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E7DB), // Background color matching the design
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              // Title
              Text(
                'Choose your environment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),

              // Description text
              Text(
                'Explore Different VR Environments for a moment with your loved ones',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 30),

              // Use case title

              // Use case placeholders
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        height: 270,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/void.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              bottom: 10,
                              right: 20,
                              child: Text(
                                'Void',
                                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                        height: 270,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/emptyroom.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              bottom: 10,
                              right: 20,
                              child: Text(
                                'Room',
                                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        height: 270,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/clouds.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              bottom: 10,
                              right: 20,
                              child: Text(
                                'Clouds',
                                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                        height: 270,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/env.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              bottom: 10,
                              right: 20,
                              child: Text(
                                'Env',
                                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 15),
              // Create Now button
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4B7A77),
                  minimumSize: Size(double.infinity, 50), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                ),
                child: Text(
                  'Start Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
