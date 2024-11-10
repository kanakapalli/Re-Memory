import 'package:flutter/material.dart';

class SenseOfVoiceBottomSheet extends StatelessWidget {
  const SenseOfVoiceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E7DB), // Background color matching the design
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              // Header image section
              Center(
                child: Image.asset(
                  'assets/voice_image.png', // Replace with the actual image path
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16),

              // Title
              Text(
                'Sense of Voice',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),

              // Description text
              Text(
                'Some voices stay with us forever—the way they said your name or told stories. With Sense of Voice, you can recreate their voice from recordings, bringing their sound back into your life. Play it whenever you need comfort, guidance, or a reminder of their love.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),

              Text(
                'Feel their presence during quiet moments or hear their voice as part of an interactive conversation—like a bridge between the past and present.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),

              // Use case title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Use case',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Use case placeholders
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First use case card
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  // Second use case card
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),

              // Create Now button
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4B7A77), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                ),
                child: Text(
                  'Create Now',
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