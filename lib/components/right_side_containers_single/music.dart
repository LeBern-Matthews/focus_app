import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';
import 'package:focus_app/components/right_side_components/focus_action_button.dart';
class Music extends StatelessWidget {
  final double width;
  const Music({
    super.key,
    this.width = 448,
  });

  @override
  Widget build(BuildContext context) {
    return RightSidecontainer(
                  height: 206.4,
                  width: width,
                  childList: [
                    Text(
                      'Music',
                      style: TextStyle(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 4),
                    Center(
                      child: Text(
                        "Music help you focus. Add your favorite playlists to your focus sessions.",
                        style: TextStyle(
                          color: const Color.fromRGBO(185, 185, 185, 1),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FocusActionButton(onPressed: (){}, text: "Play music")

                  ],
                  
                );
  }
}