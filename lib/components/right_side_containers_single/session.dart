import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';
import 'package:focus_app/components/right_side_components/focus_action_button.dart';
class Session extends StatelessWidget {
  final double width;
  
  const Session({
    super.key,
    this.width = 448, 
});

  @override
  Widget build(BuildContext context) {
    return RightSidecontainer(
                height: 422.4,
                width: width,
                childList: [
                  Text(
                    'Get ready to focus',
                    
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 4),
                  Center(
                    child: Text(
                      "We'll turn off notifications and app alerts during each session. For longer sessions, we'll add a short break so you can recharge.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromRGBO(185, 185, 185, 1),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                    Row(
                      children: [
                        Text("25"),
                        Column(
                          children: [
                            FocusActionButton(onPressed: (){},width: 48, height:43.2, wchild: Icon(Icons.expand_less)),
                            FocusActionButton(onPressed: (){}, width:48, height:43.2, wchild: Icon(Icons.expand_more)),
                          ],
                        ),
                      ],
                    ),
                ],
              );
  }
}
