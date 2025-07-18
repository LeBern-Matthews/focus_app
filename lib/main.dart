import 'package:flutter/material.dart';
import 'dart:io';
import 'package:focus_app/components/left_side.dart';
import 'package:focus_app/components/right_side.dart';
import 'package:provider/provider.dart'; 
import 'package:focus_app/themes/theme_provider.dart';
import 'package:window_size/window_size.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
     if (Platform.isWindows){
       //setWindowMaxSize(const Size(max_width, max_height)); // Optional: set maximum size
       const double minWidth = 416;
       const double minHeight = 630;
       setWindowMinSize(const Size(minWidth, minHeight)); // Set minimum size
     }
     
  runApp(
  
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
} // end of main function

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus time',
      
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      themeMode: ThemeMode.system,
      // Reduce animation duration from 300ms to 150ms
      themeAnimationDuration: const Duration(milliseconds: 0),
      themeAnimationCurve: Curves.easeInOut,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  bool vertical=false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          
          // check if the height is less than the height 1020
          if (constraints.maxHeight<770){
            vertical=true;
          }
          else
          {
            vertical=false;
          }

          // Check if window width is less than 600 pixels
          if (constraints.maxWidth < 664) {
            // return the smallest layout

            return Container(
              color: const Color.fromRGBO(39, 39, 39, 1),
              width: double.infinity,
              height: double.infinity,
              child: RightSide(mode: "small", vertical: vertical,),
            );
          }

          if (constraints.maxWidth < 1068) {
            // Return compact layout
              return LeftSide(
              rightSide: RightSide(mode:"compact", vertical: vertical),
              count: _counter, incrementCounter: () {  },
              width: 48,
              collapsed: true,
              );
            
          }

          if (constraints.maxWidth < 1256) {
            // return flexible version of the default layout
            return LeftSide(count: _counter, incrementCounter: () {  },
            rightSide: RightSide(mode: "flexDefault", vertical: vertical
              ), 
            );
          }
          
          // Return default desktop layout
          return LeftSide(
            rightSide: RightSide(mode:"", vertical: vertical),
            count: _counter, incrementCounter: () {  },
          );
        },
      ),
    );
  }
}
