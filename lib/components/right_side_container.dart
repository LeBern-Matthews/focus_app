import 'package:flutter/material.dart';

class RightSidecontainer extends StatelessWidget {
  final List<Widget> childList;
  final double height;
  const RightSidecontainer({
    super.key,
    required this.childList,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(50, 50, 50, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 448,
      height: height,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: childList
        ,
      ),
    );
  }
}