import 'package:flutter/material.dart';

class LeftSideButtonCollapsed extends StatelessWidget {// The collapsed version of the left side buttons, replaces the buttons with the 
  final VoidCallback onPressed; // Define the callback function type
  final IconData icon;
  const LeftSideButtonCollapsed({
    super.key,
    required this.onPressed, // Make it required

    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
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
          ],
        ),
      ),
    );
  }
}
