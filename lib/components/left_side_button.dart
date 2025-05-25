import 'package:flutter/material.dart';

class Leftsidebutton extends StatelessWidget {
  final VoidCallback onPressed; // Define the callback function type
  final String text;
  final IconData icon;
  const Leftsidebutton({
    super.key,
    required this.onPressed, // Make it required
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 272,
      height: 36,
      child: FloatingActionButton(
        elevation: 0,
        highlightElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        
        backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
        hoverColor: const Color.fromRGBO(45, 45, 45,1),
        onPressed: onPressed, // Use the passed function
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          children: [
            SizedBox(width: 12,),
            Icon(icon),
            const SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
