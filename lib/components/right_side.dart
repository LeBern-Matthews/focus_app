import 'package:flutter/material.dart';
import 'package:focus_app/components/right_side_containers_single/session.dart';
import 'package:focus_app/components/right_side_containers_single/task.dart';
import 'package:focus_app/components/right_side_containers_single/progress.dart';
import 'package:focus_app/components/right_side_containers_single/music.dart';


class RightSide extends StatelessWidget {
  final bool vertical;
  final String mode;

  const RightSide({
    super.key,
    this.vertical=false,
    required this.mode,
  });

  @override
  Widget build(BuildContext context) {
  if (mode=="small") {
    // small layout which always has a vertical scroll bar
    return Container(
      color: const Color.fromRGBO(39, 39, 39, 1),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.8, 14.4, 12.8, 51.2),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Session(width: 656),
              const SizedBox(height: 13.6),
              Task(width: 656),
              const SizedBox(height: 13.6,),
              Progress(width: 656),
              const SizedBox(height: 13.6),
              Music(width: 656),
              ],
            ),
          ),
        ),
      );
    }

    if (mode=="flexDefault"){
      // the flexible version of the default 
      return Expanded(
        child: Container(
                    padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                    color: const Color.fromRGBO(39, 39, 39, 1),
                    child: Row (
                      children: [
                        Expanded(
                          child: Column(
                             children: [
                              Session(),
                              SizedBox(height: 13.6),
                              Task(),
                              ],
                          ),
                        ),
                        const SizedBox(width: 13.6),
                        Expanded(
                          child: Column(
                            children: [
                              Progress(),
                              SizedBox(height: 13.6),
                              Music(),
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
                            Session(),
                            SizedBox(height: 13.6),
                            Task(),
                          ],
                      ),
                      const SizedBox(width: 13.6),
                      Column(
                        children: [
                          Progress(),
                          SizedBox(height: 13.6),
                          Music(),
                        ],
                      )
                    ],
                  ),
                ),
              );
  }
}