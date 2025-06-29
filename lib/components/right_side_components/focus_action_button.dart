import 'package:flutter/material.dart';

class FocusActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget wchild;
  final double width;
  final double height;

  const FocusActionButton({
    super.key,
    required this.onPressed,
    this.text="",
    this.wchild=const Icon(Icons.pin_drop_rounded),
    this.width=107.2,
    this.height=32,
  });

  @override
  Widget build(BuildContext context) {
    bool hasChild=false;
    if (text==""){
       hasChild=true;
      }

    return SizedBox(
      width: width,
      height:height,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color.fromRGBO(63, 63, 58, 1),
        focusColor: const Color.fromRGBO(68, 68, 63, 1),
        hoverColor: const Color.fromRGBO(68, 68, 63, 1),
        elevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child:hasChild 
        ? wchild
        : Text(text)
      ),
    );
  }
}