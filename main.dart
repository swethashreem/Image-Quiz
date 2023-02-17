// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_loadertask/img.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final timer = Timer(const Duration(seconds: 8), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Img()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'IMAGE QUIZ',
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            height: 150,
            child: SpinKitFadingCircle(
              color: Colors.black,
              size: 50,
            ),
          )
        ],
      )),
    );
  }
}
