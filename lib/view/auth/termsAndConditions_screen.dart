import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/view/auth/login_screen.dart';


class TermsAndConditionsScreen extends StatefulWidget {
  @override
  _TermsAndConditionsScreenState createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1. Introduction\n\n'
                      'Welcome to our application. By accessing our app, you agree to comply with the following terms and conditions...\n\n'
                      '2. Limitation of Liability\n\n'
                      'We strive to provide the best experience, but we are not liable for any damages that may result...\n\n'
                      '3. Third-Party Services\n\n'
                      'The app may connect to third-party services for an enhanced experience...\n\n'
                      '4. Consent and Privacy Protection\n\n'
                      'We take your privacy seriously. By using our app, you consent to our privacy practices...\n\n'
                      '5. Changes to the Terms\n\n'
                      'We may update these terms from time to time. Please check back regularly...\n\n',
                      style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    'I have read the terms and accept the conditions.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isChecked
                  ? () {
                      // Navigate to the next screen
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }
                  : null,
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

