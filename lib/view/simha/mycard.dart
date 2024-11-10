import 'package:flutter/material.dart';

class MyCardWidget extends StatefulWidget {
  final String title;
  final String description;
  final void Function()? onPressed;
  final String buttonText;
  final String imagePath;

  const MyCardWidget(
      {super.key,
      required this.title,
      required this.description,
      this.onPressed,
      this.buttonText = 'Create Now',
      required this.imagePath});

  @override
  State<MyCardWidget> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      child: Container(
        // width: 350,
        // height: 200,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFCBD2D2), // Background color from image
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            // Image or graphical side
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  widget.imagePath, // Replace with the path to your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            // Text content side
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: widget.onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4B7A77), // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        widget.buttonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
