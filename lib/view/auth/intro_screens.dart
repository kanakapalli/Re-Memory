
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/view/auth/termsAndConditions_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                buildPage(
                  image: 'assets/images/sample.png', // Replace with your image asset
                  title: 'Meet Your Loved Ones Again',
                  subtitle:
                      'Reunite with those you\'ve lost and cherish the memories once more in an immersive journey.',
                ),
                  buildPage(
                  image: 'assets/images/sample.png', // Replace with your image asset
                  title: 'Meet Your Loved Ones Again',
                  subtitle:
                      'Reunite with those you\'ve lost and cherish the memories once more in an immersive journey.',
                ),
                // You can add more pages here if needed
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (index) => buildDot(index)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage == 1) {
                  // Navigate to the next screen
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()),
                  );
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(_currentPage == 1 ? 'Get started' : 'Next'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildPage({required String image, required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 150, height: 150), // Image in the center
          SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: _currentPage == index ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blueAccent : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}