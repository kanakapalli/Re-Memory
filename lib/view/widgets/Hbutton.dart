import 'package:flutter/material.dart';

class Heavenly3DButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const Heavenly3DButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _Heavenly3DButtonState createState() => _Heavenly3DButtonState();
}

class _Heavenly3DButtonState extends State<Heavenly3DButton> {
  bool _isPressed = false;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform: _isPressed
      ? (Matrix4.identity()..translate(0.0, 4.0, 0.0))
      : Matrix4.identity(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: _isHovered
                  ? [Colors.blue.shade200, Colors.purple.shade200]
                  : [Colors.blue.shade300, Colors.purple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: _isPressed
                ? [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ]
                : [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      offset: Offset(0, 6),
                      blurRadius: 12,
                    ),
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.2),
                      offset: Offset(0, -4),
                      blurRadius: 8,
                    ),
                  ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                shadows: [
                  Shadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    offset: Offset(1, 1),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
