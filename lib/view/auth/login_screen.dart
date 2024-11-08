import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/menu_screen.dart';
import 'package:flutter_unity_widget_example/view/person/personView.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for the logo image
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/login_logo.png'), // Replace with your logo asset
            ),
            SizedBox(height: 30),
            
            // Title text
            Text(
              'Login/Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            SizedBox(height: 20),
            
            // Mobile number input
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter mobile number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              ),
              keyboardType: TextInputType.phone,
            ),
            
            SizedBox(height: 20),
            
            // Continue button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => PersonView()),
      );
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            
            SizedBox(height: 20),
            
            // Divider with "Or login with" text
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or login with',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),
            
            SizedBox(height: 20),
            
            // Social login buttons
            SocialLoginButton(
              icon: Icons.g_mobiledata,
              text: 'Continue with Google',
              color: Colors.blue,
              onPressed: () {
                // Add your Google login logic here
              },
            ),
            SizedBox(height: 10),
            SocialLoginButton(
              icon: Icons.facebook,
              text: 'Continue with Facebook',
              color: Colors.blue[900]!,
              onPressed: () {
                // Add your Facebook login logic here
              },
            ),
            SizedBox(height: 10),
            SocialLoginButton(
              icon: Icons.apple,
              text: 'Continue with Apple',
              color: Colors.black,
              onPressed: () {
                // Add your Apple login logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onPressed;

  SocialLoginButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
