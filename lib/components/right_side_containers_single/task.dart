import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';

class Task extends StatelessWidget {
  final double width;
  const Task({
    super.key,
    this.width = 448,
    });

  @override
  Widget build(BuildContext context) {
    return RightSidecontainer(
                height: 284.8,
                width: width,
                childList: [
                  Text(
                    'Stay on track',
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Add tasks and assign them to focus sessions throughout your day.",
                    style: TextStyle(
                      color: const Color.fromRGBO(185, 185, 185, 1),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                ],
              );
  }
}