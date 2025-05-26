import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';


class RightSide extends StatelessWidget {
  final bool isVertical;
  final bool isFlexible;

  const RightSide({
    super.key,
    required this.isVertical,
    required this.isFlexible,

  });

  @override
  Widget build(BuildContext context) {
  if (isVertical && isFlexible) {
    return Container(
      color: const Color.fromRGBO(39, 39, 39, 1),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RightSidecontainer(
                height: 422.4,
                width: double.infinity,
                childList: [
                  Text(
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
                ],
              ),
              const SizedBox(height: 13.6),
              RightSidecontainer(
                height: 284.8,
                width: double.infinity,
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
              ),
              SizedBox(height: 13.6,),
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
                height: 309.6,width: 656,),
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
                  ,width: 656,
                )
              ],
            ),
          ),
        ),
      );
    }

    if (isVertical==false && isFlexible){
      return Expanded(
        child: Container(
                    padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                    
                    color: const Color.fromRGBO(39, 39, 39, 1),
                    child: Row (
                      children: [
                        Expanded(
                          child: Column(
                             children: [
                                RightSidecontainer(childList: [ Text(
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

                            )], 
                            height: 422.4),
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
                        ),
                        const SizedBox(width: 13.6),
                        Expanded(
                          child: Column(
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
                          ),
                        )
                      ],
                    ),
                  ),
      );
    }

    return Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                  
                  color: const Color.fromRGBO(39, 39, 39, 1),
                  child: Row (
                    children: [
                      Column(
                         children: [
                            RightSidecontainer(childList: [ Text(
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

                            )], 
                            height: 422.4),
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