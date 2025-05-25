import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';


class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                  
                  color: const Color.fromRGBO(39, 39, 39, 1),
                  child: Row (
                    children: [
                      Column(
                         children: [
                            Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(50, 50, 50, 1),
                            borderRadius: BorderRadius.circular(10), // Adjust the radius value as needed
                          ),
                          width: 448,
                          height: 422.4,
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children:[ Text(
                              'Get ready to focus',
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "We'll turn off notifications and app alerts during each session. For longer sessions, we'll add a short break so you can recharge.",
                              style: TextStyle(
                                color: const Color.fromRGBO(185, 185, 185, 1),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(

                            )
                            ]
                          ),
                        ),
                        SizedBox(height: 13.6),             // Newly added space
                        RightSidecontainer(height:284.8 ,childList: 
                        [
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
                          
                        ]
                        )

                      
                          ],
                      ),
                      const SizedBox(width: 13.6),
                      Column(
                        children: [
                          RightSidecontainer(
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
                           
                          height: 309.6),
                          SizedBox(height: 13.6),
                          RightSidecontainer(
                            childList: [
                              Text(
                                'Music',
                                style: TextStyle(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Music help you focus. Add your favorite playlists to your focus sessions.",
                                style: TextStyle(
                                  color: const Color.fromRGBO(185, 185, 185, 1),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                            height: 206.4
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
  }
}