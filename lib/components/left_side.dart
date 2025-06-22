import 'package:flutter/material.dart';
import 'package:focus_app/components/left_side_button.dart';
import 'package:focus_app/components/right_side.dart';

class LeftSide extends StatelessWidget {
  final RightSide rightSide;
  final int count;
  final VoidCallback  incrementCounter;
  final double width;
  final bool collapsed;
  const LeftSide({
    super.key,
    required this.rightSide,
    required this.count,
    required this.incrementCounter,
    this.width = 280,  // Optional parameter with default value
    this.collapsed = false, // default value for collapsed
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                width: width,
                color: const Color.fromRGBO(32, 32, 32, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Leftsidebutton(onPressed: incrementCounter, text: "Focus periods", icon: Icons.auto_mode_rounded,collapsed: collapsed,),
                    const SizedBox(height: 20),
                    Leftsidebutton(onPressed: incrementCounter, text: "$count", icon: Icons.add_box_rounded,collapsed: collapsed),
                    Spacer(),
                    Leftsidebutton(
                      onPressed: incrementCounter,
                      text: 'Settings',
                      icon: Icons.settings,
                      collapsed: collapsed
                    ),
                  ],
                ),
              ),
              rightSide,
            ],
          );
  }
}