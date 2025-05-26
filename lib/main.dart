import 'package:flutter/material.dart';
import 'package:focus_app/components/left_side.dart';
import 'package:focus_app/components/left_side_button_collapsed.dart';
import 'package:focus_app/components/right_side.dart';
import 'package:provider/provider.dart'; 
import 'package:focus_app/themes/theme_provider.dart';


void main() {
  runApp(
  
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );

}

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
  int _counter = 0;

  void _incrementCounter() {// dart will bitch if you don't use this method
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Check if window width is less than 600 pixels

          if (constraints.maxWidth<=320){
            return Container(
              color: const Color.fromRGBO(39, 39, 39, 1),
              width: double.infinity,
              height: double.infinity,
              child: RightSide(
                isVertical: true, 
                isFlexible: false
              ),
            );
          }
          
          if (constraints.maxWidth < 664) {
            return Container(
              color: const Color.fromRGBO(39, 39, 39, 1),
              width: double.infinity,
              height: double.infinity,
              child: RightSide(
                isVertical: true, 
                isFlexible: true,
              ),
            );
          }

          if (constraints.maxWidth < 1077) {
            // Return mobile/compact layout
            return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                width: 48,
                color: const Color.fromRGBO(32, 32, 32, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LeftSideButtonCollapsed(onPressed: _incrementCounter,  icon: Icons.auto_mode_rounded),
                    const SizedBox(height: 20),
                    LeftSideButtonCollapsed(onPressed: _incrementCounter,  icon: Icons.add_box_rounded),
                    Spacer(),
                    LeftSideButtonCollapsed(
                      onPressed: _incrementCounter,
                      icon: Icons.settings,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromRGBO(39, 39, 39, 1),
                  child: const Center(
                    child: Text('Change'),
                  ),
                ),
              ),
            ],
          );
          }

          if (constraints.maxWidth < 1256) {
            //return RightSide(isVertical: false, isFlexible: true,);

            return LeftSide(rightSide: RightSide(isVertical: false, isFlexible: true,), count: _counter, incrementCounter: () {  },);

            }
          
          // Return default desktop layout
          return LeftSide(
            rightSide: RightSide(isVertical: false, isFlexible: false,),
            count: _counter, incrementCounter: () {  },
          );
        },
      ),
    );
  }
}
