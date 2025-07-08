import 'package:flutter/material.dart';

class RightSidecontainer extends StatelessWidget {
  final List<Widget> childList;
  final double height;
  final double width;
  
  const RightSidecontainer({
    super.key,
    required this.childList,
    required this.height,
    this.width = 448,  // Optional parameter with default value
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(50, 50, 50, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      width: width,
      height: height,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: childList,

      ),
    );
  }
}