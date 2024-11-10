import 'dart:async';
import 'dart:convert';
import 'package:dude/environment_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // List of texts to display
  final List<String> loadingTexts = [
    "Connecting to the Heavens...",
    "Meet your loved ones who have passed away... ",
    "Awaiting your arrival...",
    "Gathering the details...",
    "Almost there, hang tight!"
  ];

  // Variable to track the current text index
  int currentIndex = 0;
  Map<String, dynamic> data = {};

  @override
  void initState() {
    super.initState();
    startTextCycle();
  }

  // Function to start the text change cycle
  void startTextCycle() async {
    // Create a timer that changes text every 3.33 seconds
    Timer.periodic(Duration(seconds: 30), (Timer timer) async {
      Map<String, dynamic>? data = await processSenseOfMoment();
      if (data != null &&
          data["sense_of_moment_video_url"] != null &&
          data["sense_of_moment_video_status"] == 'success') {
        timer.cancel();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EnvironmentsScreen()));
      }
      if (currentIndex < loadingTexts.length - 1) {
        setState(() {
          currentIndex++;
        });
      } else {
        // Stop the timer after 10 seconds (after all texts have been shown)
        // timer.cancel();
      }
    });
  }

  Future<Map<String, dynamic>?> processSenseOfMoment() async {
    var r = await http.get(Uri.parse('https://beloved-selected-krill.ngrok-free.app/api/sense-of-moment/'), headers: {
      'Authorization': 'token 48871de8624cfa11a20341cb2d21ef1c8ad10452',
    });
    print(r.statusCode);
    print(r.body);
    data = json.decode(r.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your preferred background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Color(0XFF376D7C),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              loadingTexts[currentIndex],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
