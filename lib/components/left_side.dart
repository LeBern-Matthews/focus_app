import 'package:flutter/material.dart';
import 'package:focus_app/components/left_side_button.dart';
import 'package:focus_app/components/right_side.dart';

class LeftSide extends StatelessWidget {
  final RightSide rightSide;
  final int count;
  final VoidCallback  incrementCounter;

  const LeftSide({
    super.key,
    required this.rightSide,
    required this.count,
    required this.incrementCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                width: 280,
                color: const Color.fromRGBO(32, 32, 32, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Leftsidebutton(onPressed: incrementCounter, text: "Focus periods", icon: Icons.auto_mode_rounded),
                    const SizedBox(height: 20),
                    Leftsidebutton(onPressed: incrementCounter, text: "$count", icon: Icons.add_box_rounded),
                    Spacer(),
                    Leftsidebutton(
                      onPressed: incrementCounter,
                      text: 'Settings',
                      icon: Icons.settings,
                    ),
                  ],
                ),
              ),
              rightSide,
            ],
          );
  }
}