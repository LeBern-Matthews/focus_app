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
    Widget compact;
    Widget flexDefault;
    Widget dDefault;

  if (mode=="small") {
    // small layout which always has a vertical scroll bar
    return SingleChildScrollView(
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
      );
    }

  if (mode=="compact"){
        if (vertical){
           compact= SingleChildScrollView(child: CompactRightSide());
        }
        else{
           compact= CompactRightSide();
        }
        return Expanded(child: compact);
        }

    if (mode=="flexDefault"){
      // the flexible version of the default 
      if (vertical){
          flexDefault =SingleChildScrollView(child: ExpandedDefaultRightSide());
      }
      else{
          flexDefault= ExpandedDefaultRightSide();
      }
      return Expanded(child: flexDefault);
    }

    if (vertical){
        dDefault =Expanded(child: SingleChildScrollView(child: DefultRightSide()));
    }
    else{
        dDefault= Expanded(child: DefultRightSide());
    }
    return dDefault;
  }
}

class CompactRightSide extends StatelessWidget {
  const CompactRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                      color: const Color.fromRGBO(39, 39, 39, 1),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12.8, 14.4, 12.8, 51.2),
                          child: Row (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                   children: [
                                    Session(width: 575),
                                    SizedBox(height: 13.6),
                                    Task(width: 575),
                                    ],
                                ),
                              ),
                              const SizedBox(width: 13.6),
                              Expanded(
                                child: Column(
                                  children: [
                                    Progress(width: 575),
                                    SizedBox(height: 13.6),
                                    Music(width: 575),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
          
                  ),
      ],

    );
  }
}

class ExpandedDefaultRightSide extends StatelessWidget {
  const ExpandedDefaultRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                        padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                        color: const Color.fromRGBO(39, 39, 39, 1),
                        child: Row (
                          crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }
}

class DefultRightSide extends StatelessWidget {
  const DefultRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                      padding: const EdgeInsets.fromLTRB(32, 14.4, 32, 51.2),
                      
                      color: const Color.fromRGBO(39, 39, 39, 1),
                      child: Row (
                        crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
              );
  }
}