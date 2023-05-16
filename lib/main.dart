import 'package:assingment2/screens/frame1.dart';
import 'package:assingment2/screens/frame2.dart';
import 'package:assingment2/screens/frame3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: frame1(),
      routes: {
        frame2.routename: (context) => frame2(),
        frame3.routename: (context) => frame3(),
      },
    );
  }
}
