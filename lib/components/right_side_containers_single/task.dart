import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_container.dart';
import 'package:focus_app/components/right_side_components/focus_action_button.dart';
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
                  Align(
                  alignment: Alignment.topLeft,
                  child:Row(
                    children: [Icon(Icons.check, color: Colors.blue,weight: 100,size:28 ,),SizedBox(width: 10,),Text('Tasks',style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 1),fontSize: 14,),
                  )],
                  )
                  ),
                  Text(
                    'Stay on track',
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 4),
                  Center(
                    child: Text(
                      "Add tasks and assign them to focus sessions throughout your day.",
                      style: TextStyle(
                        color: const Color.fromRGBO(185, 185, 185, 1),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FocusActionButton(onPressed: () {}, wchild: Row(
                    children: [Icon(Icons.add), Text("Add a task")],
                  ),)

                ],
              );
  }
}