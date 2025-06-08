import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';

class Progress extends StatelessWidget {
  final double width;

  const Progress({
    super.key,
    this.width = 448,
    });

  @override
  Widget build(BuildContext context) {
    return RightSidecontainer(
                childList: [
                  Text(
                    'Daily progress',
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 4),

                ],
                height: 309.6,
                width: width,
                );
  }
}